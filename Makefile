PANDOC_OPTIONS :=


statuto.pdf: statuto.md
	pandoc $(PANDOC_OPTIONS) -o $@ $?

clean: statuto.pdf
	rm $<

PHONY := clean
