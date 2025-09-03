# Markdown → LaTeX Book Starter

Write chapters in **Markdown (.md)** and export to **LaTeX/PDF** via **Pandoc**.
Includes GitHub Actions to build `main.pdf` on each push to `main`.

## Quick start
```bash
# Build locally (needs: pandoc, texlive-xetex, latexmk)
make            # → builds book/main.pdf
make tex        # → book/main.tex
```

## Structure
```
book/
  chapters/
    01-intro.md
    02-chapter-example.md
  figures/
    example-figure.svg
  references.bib
  metadata.yaml
.github/workflows/build.yml
Makefile
```

## Push to GitHub
```bash
git init
git add .
git commit -m "init md→latex book"
git branch -M main
git remote add origin <YOUR_REPO_URL>
git push -u origin main
```
