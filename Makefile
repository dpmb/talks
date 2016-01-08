all: lightning-talk.html hinter-den-kulissen.html behind-the-curtain.html

%.html: %.adoc Makefile
	asciidoc $<
	@echo $@ done.

iwatch: all
	iwatch -c make -e close_write *.adoc
