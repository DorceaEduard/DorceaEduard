# AGENTS.md — C:\ProiectEdi

Acest proiect conține un vault Ars Contexta — un sistem de cunoștințe pentru cursuri academice.

## Structură Vault

```
C:\ProiectEdi/
├── cursuri/          # Notițe — un fișier per concept, extras din PDF-uri
│   └── index.md      # Hub MOC principal
├── inbox/            # PDF-uri de procesat
├── templates/        # Template-uri pentru notițe
└── ops/
    ├── derivation.md       # Configurația sistemului
    ├── config.yaml         # Configurare mașină
    ├── goals.md            # Ce e de făcut (actualizează la final)
    ├── methodology/        # Cum funcționează sistemul
    ├── reminders.md        # Acțiuni time-bound
    ├── sessions/           # Jurnal sesiuni
    ├── observations/       # Învățăminte operaționale
    ├── tensions/           # Probleme semnalate
    └── queue/              # Coadă de procesare
```

## Skill-uri Ars Contexta disponibile

Folosește-le cu trigger-uri naturale:

| Comandă | Skill | Acțiune |
|---|---|---|
| "extrage din [PDF]" | arscontexta-reduce | Citește PDF-ul din inbox/ și creează notițe atomice în cursuri/ |
| "conectează notițele noi" | arscontexta-reflect | Găsește conexiuni între concepte, actualizează MOC-uri |
| "reactualizează notițe vechi" | arscontexta-reweave | Actualizează notițe mai vechi cu link-uri noi |
| "verifică vault-ul" | arscontexta-verify | Validare descrieri, schemă, link-uri |
| "diagnostic" | arscontexta-health | Verificare completă sănătate vault |
| "salvează învățarea asta" | arscontexta-remember | Captură insight-uri în ops/observations/ |
| "ce ar trebui să fac?" | arscontexta-next | Recomandă următoarea acțiune |
| "ajutor" | arscontexta-help | Listă skill-uri și explicații |
| "rethink this" | arscontexta-rethink | Provocare adversarială a ideilor |
| "arată statistici" | arscontexta-stats | Metrici vault |

## Ritm Sesiune

**ORIENT → WORK → PERSIST**

**ORIENT (start):**
1. Citește ops/goals.md (ce e de lucru)
2. Verifică ops/reminders.md (acțiuni urgente)
3. Verifică coada ops/queue/ (ce așteaptă procesare)

**WORK:**
- O sarcină pe sesiune
- Descoperirile le capturezi în inbox, nu le urmărești acum

**PERSIST (obligatoriu):**
1. Actualizează ops/goals.md
2. Salvează observații în ops/observations/ dacă e cazul
3. Rulează verify pe notițe noi

## Convecții Notițe

- Titlu = frază care exprimă conceptul (propoziție, nu etichetă)
- YAML frontmatter: description, source, course, type
- Wiki-links [[alt concept]] pentru conexiuni
- Topics footer cu link la MOC-ul cursului
- Description ~150 caractere, diferit de titlu

## Reguli

- Nu șterge niciodată — arhivează sau marchează outdated
- Descoperirile în timpul lucrului → inbox, nu deraia sarcina curentă
- Propune schimbări de metodologie, nu le implementa unilateral
- Tot ce nu va exista sesiunea viitoare, scrie acum
