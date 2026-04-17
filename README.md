# Traxis: Taxi Coordination Application System for Uganda’s Public Transport Sector

This repository contains the LaTeX source code for the Final Year Project (FYP) report for **Traxis**, a Taxi Coordination Application System designed for Uganda's public transport sector.

## Project Details

- **Title**: Traxis: Taxi Coordination Application System for Uganda’s Public Transport Sector
- **Authors**: Group 7
- **Institution**: Makerere University
- **College/School**: School of Computing & Informatics Technology
- **Department**: Department of Computer Science
- **Degree**: Bachelor of Science in Computer Science
- **Submission Date**: November 2025
- **Supervisor**: Dr. Marriette Katarahweire

## Document Structure

The report is structured into several sections, managed through the root `main.tex` file:

- **`main.tex`**: The primary LaTeX file that includes all front matter, chapters, and appendices.
- **Front Matter**: Includes `titlepage.tex`, `declaration.tex`, `approval.tex`, `dedication.tex`, `acknowledgements.tex`, and `abstract.tex`.
- **`chapters/`**: Contains the main content chapters:
  - `introduction.tex`
  - `literature_review.tex`
  - `methodology.tex`
  - `System Analysis and Design.tex`
- **`references.bib`**: Contains the bibliography entries formatted for IEEE citation style.
- **`appendices/`**: Contains supplementary materials and appendices.
- **`images/`**: Contains images, diagrams, and logos used throughout the document.

## How to Compile

To compile this report into a PDF, you will need a LaTeX distribution (such as TeX Live, MiKTeX, or MacTeX) installed on your system. 

You can compile the `main.tex` file using the terminal with the standard `pdflatex` and `bibtex` workflow:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

Alternatively, you can open the project in popular LaTeX editors such as TeXShop, Texmaker, or VS Code with the LaTeX Workshop extension, and compile it from there. It can also be uploaded and compiled natively on Overleaf.

## License

All rights reserved by the authors and Makerere University.
