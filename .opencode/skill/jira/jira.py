"""
Jira CLI pentru practica DeviDevs x UTCB — folosit de agentul tau din opencode.

Citeste credentialele din .env (local, gitignored):
    JIRA_URL=https://practica-devidevs-utcb-grupa-b.atlassian.net
    JIRA_EMAIL=emailul_tau@gmail.com
    JIRA_TOKEN=ATATT...   (token CLASIC, nu "with scopes")

Comenzi:
    python jira.py mine                      # tichetele tale (asignate tie)
    python jira.py list                      # toate tichetele de pe board
    python jira.py get KAN-5                  # detaliile unui ticket
    python jira.py create "Sumar ticket"     # creeaza un ticket nou
    python jira.py move KAN-5 "In Progress"   # muta statusul (To Do/In Progress/In Review/Done)
    python jira.py comment KAN-5 "Am facut X" # adauga un comentariu
    python jira.py log KAN-5 2h "Ce am facut" # logheaza timp lucrat

Nevoie: pip install requests python-dotenv
"""
import os
import sys
import requests
from pathlib import Path

# incarca .env din folderul curent (fara dotenv daca nu e instalat)
def load_env():
    try:
        from dotenv import load_dotenv
        load_dotenv()
    except ImportError:
        envf = Path(".env")
        if envf.exists():
            for line in envf.read_text(encoding="utf-8").splitlines():
                line = line.strip()
                if line and not line.startswith("#") and "=" in line:
                    k, v = line.split("=", 1)
                    os.environ.setdefault(k.strip(), v.strip())

load_env()
URL = os.getenv("JIRA_URL", "").rstrip("/")
EMAIL = os.getenv("JIRA_EMAIL", "")
TOKEN = os.getenv("JIRA_TOKEN", "")
AUTH = (EMAIL, TOKEN)
H = {"Accept": "application/json", "Content-Type": "application/json"}
# board key (proiectul) — board key per echipa (vezi .env)
KEY = os.getenv("JIRA_PROJECT", "KAN")


def check():
    if not (URL and EMAIL and TOKEN):
        sys.exit("EROARE: lipsesc JIRA_URL / JIRA_EMAIL / JIRA_TOKEN din .env")


def jql(query):
    r = requests.post(f"{URL}/rest/api/3/search/jql", auth=AUTH, headers=H,
                      json={"jql": query, "fields": ["summary", "status", "assignee"], "maxResults": 100}, timeout=30)
    r.raise_for_status()
    for it in r.json().get("issues", []):
        f = it["fields"]
        who = (f.get("assignee") or {}).get("displayName", "-")
        print(f"{it['key']:8} [{f['status']['name']:12}] {who:18} {f['summary']}")


def get(k):
    r = requests.get(f"{URL}/rest/api/3/issue/{k}", auth=AUTH, headers=H, timeout=30)
    r.raise_for_status()
    f = r.json()["fields"]
    print(f"{k}: {f['summary']}")
    print(f"  status:   {f['status']['name']}")
    print(f"  assignee: {(f.get('assignee') or {}).get('displayName', '-')}")


def create(summary):
    body = {"fields": {"project": {"key": KEY}, "summary": summary, "issuetype": {"name": "Task"}}}
    r = requests.post(f"{URL}/rest/api/3/issue", auth=AUTH, headers=H, json=body, timeout=30)
    if r.status_code in (200, 201):
        print(f"creat: {r.json()['key']} — {summary}")
    else:
        print(f"eroare {r.status_code}: {r.text[:200]}")


def move(k, status):
    r = requests.get(f"{URL}/rest/api/3/issue/{k}/transitions", auth=AUTH, headers=H, timeout=30)
    r.raise_for_status()
    tid = None
    for t in r.json()["transitions"]:
        if t["name"].lower() == status.lower():
            tid = t["id"]
            break
    if not tid:
        names = ", ".join(t["name"] for t in r.json()["transitions"])
        sys.exit(f"status '{status}' indisponibil. Disponibile: {names}")
    rr = requests.post(f"{URL}/rest/api/3/issue/{k}/transitions", auth=AUTH, headers=H,
                       json={"transition": {"id": tid}}, timeout=30)
    print(f"{k} -> {status}" if rr.status_code == 204 else f"eroare {rr.status_code}: {rr.text[:150]}")


def comment(k, text):
    body = {"body": {"type": "doc", "version": 1,
                     "content": [{"type": "paragraph", "content": [{"type": "text", "text": text}]}]}}
    r = requests.post(f"{URL}/rest/api/3/issue/{k}/comment", auth=AUTH, headers=H, json=body, timeout=30)
    print(f"comentariu adaugat pe {k}" if r.status_code == 201 else f"eroare {r.status_code}: {r.text[:150]}")


def log(k, time, text):
    body = {"timeSpent": time, "comment": {"type": "doc", "version": 1,
            "content": [{"type": "paragraph", "content": [{"type": "text", "text": text}]}]}}
    r = requests.post(f"{URL}/rest/api/3/issue/{k}/worklog", auth=AUTH, headers=H, json=body, timeout=30)
    print(f"logat {time} pe {k}" if r.status_code in (200, 201) else f"eroare {r.status_code}: {r.text[:150]}")


def main():
    check()
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    cmd, args = sys.argv[1], sys.argv[2:]
    if cmd == "mine":
        jql(f'project = {KEY} AND assignee = currentUser() AND statusCategory != Done ORDER BY status')
    elif cmd == "list":
        jql(f'project = {KEY} ORDER BY status')
    elif cmd == "get":
        get(args[0])
    elif cmd == "create":
        create(args[0])
    elif cmd == "move":
        move(args[0], args[1])
    elif cmd == "comment":
        comment(args[0], args[1])
    elif cmd == "log":
        log(args[0], args[1], args[2] if len(args) > 2 else "")
    else:
        sys.exit(f"comanda necunoscuta: {cmd}\n{__doc__}")


if __name__ == "__main__":
    main()
