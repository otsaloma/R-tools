# -*- coding: utf-8-unix -*-

DESTDIR =
PREFIX  = /usr/local
BINDIR  = $(DESTDIR)$(PREFIX)/bin

install:
	mkdir -p $(BINDIR)
	cp multi-rscript r r-load r-parse rscript $(BINDIR)
	chmod +x $(BINDIR)/multi-rscript
	chmod +x $(BINDIR)/r
	chmod +x $(BINDIR)/r-load
	chmod +x $(BINDIR)/r-parse
	chmod +x $(BINDIR)/rscript
	mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	cp *.desktop $(DESTDIR)$(PREFIX)/share/applications

.PHONY: install
