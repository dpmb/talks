all: dc15-dpmb-lightning-talk.html

%.html: %.txt Makefile
	asciidoc $<
	@echo $@ done.

iwatch: all
	iwatch -c make -e close_write *.txt
