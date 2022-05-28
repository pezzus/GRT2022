.PHONY=all pack

vorig=poster

all: 2022_06_GRT_BayesECG.pdf

2022_06_GRT_BayesECG.pdf: $(vorig).pdf
	ps2pdf $^ $@

$(vorig).pdf: $(vorig).tex
	latexmk -pdf $<

clean:
	latexmk -C $(vorig)
