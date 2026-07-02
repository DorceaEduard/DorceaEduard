---
_schema:
  required:
    - descriere
    - materii
    - source
  fields:
    descriere:
      type: string
    materii:
      type: wiki-link-list
    type:
      type: enum
      values: [definition, theorem, formula, algorithm, example]
    notation:
      type: string
      purpose: "Notația matematică (LaTeX)"
    source:
      type: string
descriere: ""
materii: []
type: formula
notation: ""
source: ""
confidence: established
created: {{date}}
---

# {{title}}

$${{notation}}$$

(Explicația formulei și variabilele implicate.)
