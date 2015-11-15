all: lightning-talk.html hinter-den-kulissen.html

%.html: %.txt Makefile
	asciidoc $<
	@echo $@ done.

iwatch: all
	iwatch -c make -e close_write *.txt
