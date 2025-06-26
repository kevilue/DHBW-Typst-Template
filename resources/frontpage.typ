/*
frontpage.typ

This file contains the front page of the document.
*/

#let frontpage(
  workTitle: "Bachelor thesis", 
  title: "My Title", 
  studyProgram: "Faculty x", 
  universityName: "DHBW Stuttgart",
  author: "Max Mustermann",
  matrNum: "0000000",
  course: "XYIN",
  supervisor: "Max Mustermann",
  lang: "en"
) = {
  // Logo
  place(top + right, image("../images/logo.png", width: 35%))
  align(horizon)[
    #align(center, text(20pt)[
      #workTitle
    ])
    // #v(1em)
    #align(center, text(12pt)[
    #if lang == "en" [
      on the topic
    ] else if lang == "de" [
      zum Thema
    ] else [
      Language not implemented yet.
    ]
    ])
    // Title
    #align(center, text(24pt)[
      *#title*
    #align(center, text(12pt)[
      #studyProgram #parbreak()
      #if lang == "en" [
        at the 
      ] else if lang == "de" [
        an der 
      ] else [
        Language not implemented yet.
      ]
      #universityName
    ])
    ])
  ]
  // Details
  align(bottom)[
  #grid(
    columns: (1fr, 1fr),
    rows: (2em, 2em),
    align(text(14pt)[
      #if lang == "en" [
        *Author:* 
      ] else if lang == "de" [
        *Name: * 
      ] else [
        Language not implemented yet.
      ]
      #author
    ]),
    align(text(14pt)[
      #if lang == "de" [
        *Matrikelnummer:*
      ] else [
        *Matriculation Number:*
      ] 
      #matrNum
    ]),
    align(text(14pt)[
      #if lang == "de" [
        *Kurs:*
      ] else [
        *Course:*  
      ]
      #course
    ]),
    align(text(14pt)[
      #if lang == "de" [
        *Betreuer:*
      ] else [
        *Supervisor:*
      ]
      #supervisor
    ])
  )  
  ]
}