---
_schema:
  required:
    - descriere
  fields:
    descriere:
      type: string
      purpose: "Ce acoperă această materie"
    type:
      type: enum
      values: [hartă-materie, concept, formulă]
      purpose: "Must be hartă-materie"
    created:
      type: date
descriere: ""
type: hartă-materie
created: {{date}}
materii: []
---

# {{title}}

## Concepte principale

- [[concept]] — context care explică de ce urmezi linkul

## Formule

- [[formulă]] — descriere

## Surse

- (PDF-uri asociate acestei materii)

## Hărți înrudite

- [[materie-rudată]]
