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

## Development Setup & How to Compile

To compile this report into a PDF, you will need a LaTeX distribution and **Inkscape** (which is strictly required by the `svg` package used in the project to lazily convert SVG diagrams). You will also need to ensure compilation includes the `-shell-escape` flag.

### macOS Setup
1. **Install MacTeX / BasicTeX:**
   ```bash
   brew install --cask mactex-no-gui
   ```
   *(Or just `basictex` for a minimal install)*
2. **Install Inkscape:**
   ```bash
   brew install --cask inkscape
   ```
3. **Install Required Packages (BasicTeX users only):**
   If you use a minimal distribution, install the missing packages and formatting tools:
   ```bash
   sudo tlmgr install nomencl appendix tocloft tabularray svg transparent catchfile trimspaces titlesec caption ieeetran latexindent
   ```

### Windows Setup
1. **Install TeX Live / MiKTeX:** Recommend downloading the [MiKTeX installer](https://miktex.org/). The advantage of MiKTeX is that it will automatically download missing LaTeX packages on the fly during compiling.
2. **Install Inkscape:**
   ```cmd
   winget install -e --id Inkscape.Inkscape
   ```
   *Make sure Inkscape is added to your system's `PATH` variable so LaTeX can access it via the command line.*

### Compilation

With the dependencies installed, the simplest way to compile smoothly without littering your root folder with auxiliary compilation files (like `.aux`, `.log`) is by using the provided `Makefile`.

From your terminal, run:
```bash
make
```

If you prefer doing it manually or want to configure your IDE (e.g., VS Code LaTeX Workshop), ensure that you use the `-shell-escape` flag or you will get svg rendering errors:
```bash
pdflatex -shell-escape main.tex
bibtex main
pdflatex -shell-escape main.tex
pdflatex -shell-escape main.tex
```

> **Note on IDEs:** We recommend using **VS Code** with the **LaTeX Workshop** extension. The repository includes a `.vscode/settings.json` file which automatically configures code formatting (`latexindent`), and a `.latexmkrc` file which instructs most popular extensions to funnel all LaTeX build garbage into the `build/` directory while providing you with `main.pdf` at the root.

## License

All rights reserved by the authors and Makerere University.
