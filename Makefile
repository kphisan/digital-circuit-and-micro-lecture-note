# Build Markdown → LaTeX/PDF with Pandoc + XeLaTeX
CHAPTERS := $(wildcard book/chapters/*.md)
OUT_PDF  := book/main.pdf
OUT_TEX  := book/main.tex
META     := book/metadata.yaml
BIB      := book/references.bib

all: pdf

pdf: $(OUT_PDF)

$(OUT_PDF): $(CHAPTERS) $(META) $(BIB)
	pandoc $(META) $(CHAPTERS) \
		--from markdown+table_captions+link_attributes+tex_math_dollars \
		--to pdf \
		--pdf-engine=xelatex \
		--citeproc \
		-o $(OUT_PDF)

tex: $(OUT_TEX)

$(OUT_TEX): $(CHAPTERS) $(META) $(BIB)
	pandoc $(META) $(CHAPTERS) \
		--from markdown+table_captions+link_attributes+tex_math_dollars \
		--to latex \
		--pdf-engine=xelatex \
		--citeproc \
		-o $(OUT_TEX)

clean:
	rm -f $(OUT_PDF) $(OUT_TEX)

.PHONY: all pdf tex clean
