/*
main.typ

The main file for the document. This file contains the structure of the whole document.
The actual content of the document should be changed in the file document.typ, this file  (main.typ) only contains settings.
*/

// Package for acronyms
#import "@preview/acrostiche:0.5.1": *

/////////////////////////////////////////////////////////////////////
// Document settings
/////////////////////////////////////////////////////////////////////
// Page stylings
#set page(
  paper: "a4",
)
// Text size and language
#set text(size: 12pt, lang: "en", font: "New Computer Modern")
// Spacing before and after headings
// Headings level 1
#show heading.where(
  level: 1
): it => {
    set align(left)
    set text(20pt)
    v(0.5em)
    it
    v(0.8em)
  }
// Headings level 2
#show heading.where(
  level: 2
): it => block(width: 100%)[
  #set align(left)
  #set text(16pt)
  #v(0.5em)
  #it
  #v(0.8em)
]
// Headings level 3
#show heading.where(
  level: 3
): it => block(width: 100%)[
  #set align(left)
  #set text(14pt)
  #v(0.5em)
  #it
  #v(0.8em)
]
// Numbering of headings
#set heading(numbering: "1.")
// Listings text size and line numbering
#show raw.where(block: true): code => {
  set text(size: 9pt);
  grid(
    columns: (auto, auto),
    column-gutter: 1em,
    row-gutter: par.leading,
    align: (right, raw.align),
    ..for line in code.lines {
      (
        text(fill: gray)[#line.number],
        line.body,
      )
    },
  )
}
// Styling for figures with images
#show figure.where(kind: image): it => [
  #v(1em)
  #it.body
  #v(0.5em)
  #it.caption
  #v(1em)
]
// Styling for figures of kind "listing"
#show figure.where(kind: "listing"): it => [
  #set par(justify: true, leading: 1em)
  #v(1em)
  #align(left)[
    #it.body
  ]
  #align(center, it.caption)
  #v(1em)
]
// Styling for figures of kind "dart" (listings)
#show figure.where(kind: "appendixCode"): it => [
  #set par(justify: true, leading: 1em)
  #it.body
  #align(center, it.caption)
  #v(1em)
]
// Line spacing and justification
#set par(justify: true, leading: 1.5em, spacing: 1.5em)
// Equation numbering
#set math.equation(numbering: "(1)")
#show figure.where(kind: "appendixHeading"): it => [
  #v(1em)
  #align(left)[#it]
]
// Import acronyms
#import "acronyms.typ": acros
// Init
#init-acronyms(acros)
/////////////////////////////////////////////////////////////////////

// Document content
#include "document.typ"