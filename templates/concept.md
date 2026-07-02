---
_schema:
  required:
    - descriere
    - materii
    - type
    - source
  fields:
    descriere:
      type: string
      purpose: "Ce afirmă conceptul (150 chars)"
    materii:
      type: wiki-link-list
      purpose: "Harta/hărțile materie din care face parte"
    type:
      type: enum
      values: [definition, theorem, formula, algorithm, example]
      purpose: "Tipul de conținut"
    source:
      type: string
      purpose: "PDF-ul din care provine (nume fisier)"
    confidence:
      type: enum
      values: [established, supported, speculative]
      purpose: "Cât de bine susținut e conceptul"
    created:
      type: date
descriere: ""
materii: []
type: definition
source: ""
confidence: supported
created: {{date}}
---

# {{title}}

(Conținutul conceptului. Titlul trebuie să fie o propoziție care poate fi citită natural: `since [[titlu]]`)
