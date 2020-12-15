# -*- coding: utf-8-unix -*-

DESTDIR =
PREFIX  = /usr/local
BINDIR  = $(DESTDIR)$(PREFIX)/bin

install:
	mkdir -p $(BINDIR)
	cp install-r-packages $(BINDIR)
	cp multi-rscript $(BINDIR)
	cp r $(BINDIR)
	cp r-load $(BINDIR)
	cp r-load-sqlite $(BINDIR)
	cp r-parse $(BINDIR)
	cp rscript $(BINDIR)
	chmod +x $(BINDIR)/install-r-packages
	chmod +x $(BINDIR)/multi-rscript
	chmod +x $(BINDIR)/r
	chmod +x $(BINDIR)/r-load
	chmod +x $(BINDIR)/r-load-sqlite
	chmod +x $(BINDIR)/r-parse
	chmod +x $(BINDIR)/rscript
	mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	cp *.desktop $(DESTDIR)$(PREFIX)/share/applications

.PHONY: install
