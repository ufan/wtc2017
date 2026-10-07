WTC2027 作者审阅包 / Author review package
日期 / Date: 2026-09-30

请首先打开 draft.pdf。当前论文共 8 页，包含图表和参考文献。
Please open draft.pdf first. The current manuscript has 8 pages, including figures and references.

包内包含 / Contents:
- draft.pdf and draft.txt: 当前论文 PDF 和 LaTeX 源文件 / Current PDF and LaTeX source
- references.bib：参考文献 / Bibliography
- WTC2027.cls：会议原始模板类文件 / Unmodified official document class
- images/：正文实际使用的全部图片 / All figures used in the manuscript

若需重新编译，在此目录使用安装了所需宏包的 TeX Live 或 MiKTeX 运行：
To rebuild with TeX Live or MiKTeX and the required packages installed:
  pdflatex draft.tex
  biber draft
  pdflatex draft.tex
  pdflatex draft.tex

这是作者审阅及文字修改包，未包含原始测量数据、内部分析结果、Git 历史或临时构建文件。
This review/editing package excludes raw measurements, internal analyses, Git history and temporary build files.
