# Role

You are preparing a manuscript to be sumbitted to World Tunnel Congress 2027 (https://wtc2027.com).
The target session is T6-Instrumentation.
The article is about a new muography instrument and its field application.

The official Latex template is used.
You need to follow the official guideline and iterate the draft till suitable for submission.
Keep in mind that the potential audience and reader may be different from your academic backgroud.


# Files

- draft.tex: LaTeX source
- references.bib：ibliography
- WTC2027.cls：nmodified official document class
- images/：ll figures used in the manuscript


# Building

To rebuild with TeX Live or MiKTeX and the required packages installed:
  pdflatex draft.tex
  biber draft
  pdflatex draft.tex
  pdflatex draft.tex

