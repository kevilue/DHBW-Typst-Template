/*
document.typ

This file contains the content of the document. 
When editing the content, this file should be used.
*/

// Package for acronyms
#import "@preview/acrostiche:0.5.1": *
// Frontpage
#import "ressources/frontpage.typ": frontpage
// Declaration of personal contribution
#import "ressources/erklaerung.typ": erklaerung

// Front page
#frontpage(
  workTitle:"Bachelor thesis",
  title: "My Topic",
  studyProgram: "Faculty of Computer Science",
  universityName: "Duale Hochschule Baden-Württemberg (DHBW) Stuttgart",
  author: "My Name",
  matrNum: "0000000",
  course: "My course",
  supervisor: "Max Mustermann",
)

#pagebreak()

// Erklärung
#erklaerung(
  title: "My Topic"
)

// Acronyms
#pagebreak()
#print-index(title: "Abbreviations", row-gutter: 1.5em, delimiter: "", used-only: true)

// Header
#set page(
  header: [#align(right, image("images/logo.png", width: 17.5%))],
)

// Table of contents
// Headings level one in bold
#show outline.entry.where(
  level: 1
): set text(weight: "bold")
// Print outline
#outline(
  title: text()[Table of Contents],
)
#pagebreak()

// Table of figures
#show outline.entry.where(
  level: 1
): set text(weight: "regular")
#outline(
  title: text()[Table of Figures],
  target: figure.where(kind: image)
)
#pagebreak()

// Table of Listings
#outline(
  title: text()[Table of Listings],
  target: figure.where(kind: "listing")
)

// Set regular page formatting
#set page(
  header: [#align(right, image("images/logo.png", width: 17.5%))],
  numbering: "1"
)

// Set page number to 1
#counter(page).update(1)


// Chapters / actual content
// Include the files you need
#include "content/chapter1.typ"
#include "content/chapter2.typ"
#include "content/chapter3.typ"


// Appendix

// Settings
#pagebreak()
#heading([Appendix], numbering: none)
#counter(heading).update(0)
#set heading(numbering: "A.")
// Content
#include "appendix.typ"


// Bibliography page
#pagebreak()
#bibliography("bibliography.bib", title: text()[Bibliography])