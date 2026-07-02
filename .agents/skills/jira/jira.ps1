# jira.ps1 — Helper script for Jira API operations (PS 5.1+)
param(
    [Parameter(Position=0)]
    [ValidateSet("list","get","create","search","setup","link")]
    [string]$Command,

    [Parameter()]
    [string]$Project,

    [Parameter()]
    [string]$Summary,

    [Parameter()]
    [string]$Type = "Task",

    [Parameter()]
    [string]$Jql,

    [Parameter()]
    [string]$IssueKey,

    [Parameter()]
    [string]$Description,

    [Parameter()]
    [string]$Assignee
)

$configPath = Join-Path (Resolve-Path ".") ".jira\config.json"

$config = @{}
if (Test-Path $configPath) {
    $config = Get-Content $configPath -Raw | ConvertFrom-Json
}

$baseUrl = if ($config.baseUrl) { $config.baseUrl } else { $env:JIRA_BASE_URL }
$email = if ($config.email) { $config.email } else { $env:JIRA_EMAIL }
$token = if ($config.token) { $config.token } else { $env:JIRA_API_TOKEN }
$defaultProject = if ($config.project) { $config.project } else { if ($env:JIRA_PROJECT) { $env:JIRA_PROJECT } else { "PROIECT" } }

if ((-not $baseUrl) -or (-not $email) -or (-not $token)) {
    if ($Command -ne "setup") {
        Write-Host "Jira not configured. Run 'setup' first."
        exit 1
    }
}

$auth = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("${email}:${token}"))
$headers = @{
    "Authorization" = "Basic ${auth}"
    "Content-Type" = "application/json"
    "Accept" = "application/json"
}

function Invoke-JiraApi {
    param([string]$Method, [string]$Endpoint, [object]$Body)
    if ($Endpoint -match '^agile/') { $uri = "${baseUrl}/rest/${Endpoint}" } else { $uri = "${baseUrl}/rest/api/2/${Endpoint}" }
    $params = @{
        Uri = $uri
        Method = $Method
        Headers = $headers
        ContentType = "application/json"
    }
    if ($Body) { $params.Body = ($Body | ConvertTo-Json -Depth 10) }
    try {
        $response = Invoke-RestMethod @params -ErrorAction Stop
        return $response
    } catch {
        $statusCode = $_.Exception.Response.StatusCode.value__
        $errMsg = try { $_.ErrorDetails.Message } catch { $_.Exception.Message }
        Write-Host "Jira API error ($statusCode): $errMsg"
        exit 1
    }
}

switch ($Command) {
    "setup" {
        Write-Host "=== Jira Setup ==="
        $baseUrl = Read-Host "Jira Base URL (e.g. https://your-domain.atlassian.net)"
        $email = Read-Host "Account Email"
        $token = Read-Host -AsSecureString "API Token" | ConvertFrom-SecureString
        $project = Read-Host "Default Project Key"
        if (-not $project) { $project = "PROIECT" }

        $configDir = Split-Path $configPath -Parent
        if (-not (Test-Path $configDir)) { New-Item -ItemType Directory -Path $configDir -Force | Out-Null }

        $cfg = @{ baseUrl = $baseUrl; email = $email; token = $token; project = $project }
        $cfg | ConvertTo-Json | Set-Content $configPath
        Write-Host "Config saved to .jira\config.json"
    }

    "list" {
        $proj = if ($Project) { $Project } else { $defaultProject }
        # Find board for project (search API may be disabled on some instances)
        $boards = Invoke-JiraApi -Method GET -Endpoint ('agile/1.0/board?projectKeyOrId=' + $proj)
        $boardId = if ($boards.values.Count -gt 0) { $boards.values[0].id } else { $null }
        if ($boardId) {
            $result = Invoke-JiraApi -Method GET -Endpoint ('agile/1.0/board/' + $boardId + '/issue?maxResults=50&fields=summary,status,assignee,priority')
            Write-Host "`nIssues for ${proj} (board ${boardId}):`n"
            foreach ($issue in $result.issues) {
                $key = $issue.key
                $s = $issue.fields.summary
                $status = $issue.fields.status.name
                $assignee = if ($issue.fields.assignee) { $issue.fields.assignee.displayName } else { "unassigned" }
                Write-Host "  ${key} [$status] ${s} (${assignee})"
            }
            Write-Host "`nTotal: $($result.issues.Count) / $($result.total) issues"
        } else {
            Write-Host "No board found for project '${proj}'"
        }
    }

    "get" {
        if (-not $IssueKey) { Write-Host "Usage: jira.ps1 get -IssueKey ISSUE-123"; exit 1 }
        $issue = Invoke-JiraApi -Method GET -Endpoint "issue/${IssueKey}?fields=summary,description,status,assignee,priority,created,updated"
        Write-Host "`n=== ${IssueKey} ==="
        Write-Host "Summary:   $($issue.fields.summary)"
        Write-Host "Status:    $($issue.fields.status.name)"
        Write-Host "Priority:  $($issue.fields.priority.name)"
        $assignee = if ($issue.fields.assignee) { $issue.fields.assignee.displayName } else { "unassigned" }
        Write-Host "Assignee:  ${assignee}"
        Write-Host "Created:   $($issue.fields.created)"
        Write-Host "Updated:   $($issue.fields.updated)"
        if ($issue.fields.description) {
            Write-Host "`nDescription:"
            $desc = $issue.fields.description
            if ($desc.content) {
                $textParts = @()
                foreach ($c in $desc.content) {
                    if ($c.content) {
                        $lineParts = @()
                        foreach ($item in $c.content) {
                            if ($item.type -eq "text") { $lineParts += $item.text }
                        }
                        $textParts += ($lineParts -join "")
                    }
                }
                Write-Host ($textParts -join "`n")
            }
        }
    }

    "search" {
        if (-not $Jql) { Write-Host "Usage: jira.ps1 search -Jql 'project = X AND status = Done'"; exit 1 }
        $result = Invoke-JiraApi -Method GET -Endpoint ('search?jql=' + [uri]::EscapeDataString($Jql) + '&maxResults=20&fields=summary,status,assignee')
        Write-Host "`nSearch results:`n"
        foreach ($issue in $result.issues) {
            $key = $issue.key
            $s = $issue.fields.summary
            $status = $issue.fields.status.name
            Write-Host "  ${key} [$status] ${s}"
        }
        Write-Host "`nTotal: $($result.total) issues"
    }

    "create" {
        if (-not $Summary) { $Summary = Read-Host "Issue summary" }
        if (-not $Description) { $Description = Read-Host "Description (optional)" }
        $proj = if ($Project) { $Project } else { $defaultProject }
        $body = @{
            fields = @{
                project = @{ key = $proj }
                summary = $Summary
                issuetype = @{ name = $Type }
                description = @{
                    type = "doc"
                    version = 1
                    content = @(
                        @{
                            type = "paragraph"
                            content = @(
                                @{ type = "text"; text = $Description }
                            )
                        }
                    )
                }
            }
        }
        if ($Assignee) {
            $body.fields.assignee = @{ id = $Assignee }
        }
        $issue = Invoke-JiraApi -Method POST -Endpoint "issue" -Body $body
        Write-Host "Created: $($issue.key) - ${Summary}"
        Write-Host "URL: ${baseUrl}/browse/$($issue.key)"
    }

    "link" {
        if (-not $IssueKey) { Write-Host "Usage: jira.ps1 link -IssueKey ISSUE-123"; exit 1 }
        $notePath = $env:OPENCODE_TOOL_INPUT_FILE_PATH
        if ((-not $notePath) -or (-not (Test-Path $notePath))) {
            Write-Host "No note file detected. Run from within a note context."
            exit 1
        }
        $content = Get-Content $notePath -Raw
        if ($content -match "(?ms)^---.*?---") {
            $frontmatter = $Matches[0]
            if ($frontmatter -match "(?m)^jira:") {
                $content = $content -replace '(jira:\s*\[)[^\]]*(\])', "`$1`"$IssueKey`"`$2"
            } else {
                $content = $content -replace '(^---\r?\n)', "---`njira: [`"$IssueKey`"]`n"
            }
            Set-Content $notePath $content
            Write-Host "Linked ${IssueKey} to note."
        } else {
            Write-Host 'Note has no frontmatter. Add manually: jira: ["'$IssueKey'"]'
        }
    }

    default {
        Write-Host "Jira Commands:"
        Write-Host "  setup     - Configure Jira connection"
        Write-Host "  list      - List issues for a project"
        Write-Host "  get       - Get issue details"
        Write-Host "  search    - JQL search"
        Write-Host "  create    - Create new issue"
        Write-Host "  link      - Link current note to Jira issue"
    }
}
