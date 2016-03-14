PANDOC_OPTIONS :=

all: statuto.pdf atto_costitutivo.pdf

clean: statuto.pdf
	rm $<

%.pdf: %.md
	pandoc $(PANDOC_OPTIONS) -o $@ $?

PHONY := clean all
