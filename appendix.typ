/*
appendix.typ

This file contains the content of the appendix (attachments).
*/

#import "ressources/appendixConfig.typ": appendix-heading

// Content

#appendix-heading([How to use the appendix])
Insert an appendix entry with:
#figure(
  kind: "listing",
  supplement: [Listing],
  ```typst
  #appendix-heading([Your heading title here])
  // Put your content here, e.g. figure:
  #figure(
    image("images/foo")
  ) <appendixA> // Put your reference label here
  ```,
  caption: [Typst code preview to insert the heading for an appendix entry]
)
The reference label has to be somewhere inside of the appendix content, since no label can be attached to the headings (limitations by Typst / didn't find a solution yet).

#appendix-heading("Second appendix")
Feel free to message me if you have any improvements.