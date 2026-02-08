# LaTeX Thesis Template

A LaTeX template for doctoral and master's theses based on the `book` documentclass. It uses BibLaTeX with Biber, includes TikZ examples, supports multiple languages, and comes with a draft mode featuring a watermark and timestamp.

## Features

- **Book documentclass** with front matter, main matter, appendix, and back matter
- **BibLaTeX with Biber** backend (authoryear citation style)
- **Multi-language support** via babel (English, German, French)
- **Draft mode**:
  * watermark,
  * timestamp on every page,
  * and index margin annotations
- **TikZ figures** with externalized source files and examples
- **Index and glossary/acronyms** generation
- **Booktabs tables** with externalized table definitions
- **Hyperref** for clickable cross-references and PDF metadata

## Prerequisites

- A LaTeX distribution such as [TeX Live](https://tug.org/texlive/) or [MiKTeX](https://miktex.org/)
- `biber` (ships with these distributions)
- `makeindex` and `makeglossaries` (ships with these distributions)

## How to Build

The document requires multiple compilation passes for cross-references, bibliography, index, and glossary. Scripts for that are included in this repository.

**Windows:**

```bat
compile.bat
```

**Linux / macOS:**

```bash
bash compile.sh
```

This runs the full pipeline: `pdflatex` &rarr; `makeindex` &rarr; `biber` &rarr; `makeglossaries` &rarr; `pdflatex` (twice). Output: `thesis.pdf`.

## File Structure

| File / Directory | Purpose |
|---|---|
| `thesis.tex` | Main document and preamble (all package configuration) |
| `titlepage.tex` | Custom title page |
| `statement.tex` | Declaration of authorship |
| `introduction.tex`, `analysis.tex`, `conclusion.tex` | Content chapters |
| `tikz.tex`, `table.tex` | Example chapters for TikZ figures and tables |
| `acronyms.tex` | Acronym definitions (`\newacronym{}`) |
| `example-literature.bib` | Bibliography database |
| `figures/` | TikZ source files |
| `img/` | Raster images |
| `tables/` | Externalized table definitions |

## Draft vs. Production

The preamble in `thesis.tex` has section marked with the comments `START: CHANGE BEFORE PRODUCTION` and `END: CHANGE BEFORE PRODUCTION`. Before final submission:

1. Remove `oneside` from `\documentclass` options and switch `geometry` margins from `left/right` to `inner/outer`.
2. Remove the `background` package (disables the draft watermark and timestamp).
3. Remove the `showidx` package (disables index entries shown in the page margin).

## License

[MIT](LICENSE) &mdash; Rüdiger Voigt, 2019-2026
