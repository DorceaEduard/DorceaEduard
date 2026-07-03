param()
# qmd-refresh.ps1 — Re-indexează concepte după ingest
# Rulează: qmd update + qmd embed pentru colecția 'concepts'
# Folosește: după ce adaugi/actualizezi notițe în concepts/

$ErrorActionPreference = "Stop"

try {
    Write-Host "qmd: re-indexing collections..."
    qmd update
    if ($?) {
        Write-Host "qmd: generating embeddings..."
        qmd embed
        if ($?) {
            Write-Host "qmd: index reîmprospătat cu succes."
        }
    }
}
catch {
    Write-Host "EROARE: qmd refresh a eșuat — $_"
    exit 1
}
