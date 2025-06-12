// Package for acronyms
#import "@preview/acrostiche:0.5.1": *

= Examples
In this chapter some examples for the usage of this typst template are presented.

== Listings
This chapter shows how to insert a listing.

#figure(
  ```dart
  class ExampleClass {
    final int number = 0;
    
    ExampleClass();

    void printNumber() async {
      print(number);
    }
  }
  
  ```,
  kind: "listing",
  supplement: "Listing",
  caption: [Implementation of the Example Class in the Dart language]
) <exampleclass>

@exampleclass shows the usage of Listings in this template.

== Images
This chapter shows how to insert images as figures into this document.

#figure(
  image("../images/logo.png", width: 50%),
  caption: [Logo of the DHBW Stuttgart]
) <logofigure>

In @logofigure above the usage of figures, as well as the logo of the DHBW Stuttgart, is shown. 

== Sources and abbreviations
Also, sources are cited like this: @Imaginary2025 or #cite(<Imaginary2025>). 
#parbreak()
To use acronyms, use ```typst #acr``` or ```typst #acrpl```: \
#acr("I/O") for singular, #acrpl("I/O") for plural. #acf("I/O") for the full term. 
#show link: it => [
  #set text(fill: blue,  )
  #underline(it)
]
See more: https://typst.app/universe/package/acrostiche