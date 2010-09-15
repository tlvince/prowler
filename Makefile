DESTDIR?=/usr/local

install:
	install -d $(DESTDIR)/bin
	install -d $(DESTDIR)/share/prowler/docs
	install -d $(DESTDIR)/share/prowler/examples
	cp -rp examples $(DESTDIR)/share/prowler/
	install -m755 prowler $(DESTDIR)/bin/prowler
	install -m644 README.mkd $(DESTDIR)/share/prowler/docs

uninstall:
	rm -f  $(DESTDIR)/bin/prowler
	rm -rf $(DESTDIR)/share/prowler
