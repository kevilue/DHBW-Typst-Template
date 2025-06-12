# DHBW-Typst-Template
Typst template for bachelor thesis/project works at the DHBW Stuttgart. For everyone that doesn't want to use LaTeX.

> [!CAUTION]
> I give no guarantee that the template complies with all the regulations required by the DHBW or your institution for the format of academic papers. Please check this yourself.

## Local setup
I can recommend using the [Typst CLI](https://github.com/typst/typst/releases), along with the VS Code extension **Tinymist Typst**. Compile the file with `typst compile main.typ`.

## Customization
Put images in the image folder. Your chapters can be placed into the folder "content". Please take some time to read the content of the provided pdf ([main.pdf](/main.pdf)), and take a look at the syntax in the [example chapters](/content), as well as [document.typ](/document.typ). Chapters have to be included manually in the file document.typ. The customization of the front page and declaration of personal contribution is also done in this file. The content of the appendix is located in [appendix.typ](/appendix.typ), abbreviations are defined in [acronyms.typ](/acronyms.typ).
