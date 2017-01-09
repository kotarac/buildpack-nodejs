PREFIX ?= /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp bin/compile $(PREFIX)/bin/buildpack-nodejs-compile
	cp bin/run $(PREFIX)/bin/buildpack-nodejs-run

uninstall:
	rm -f $(PREFIX)/bin/buildpack-nodejs-compile
	rm -f $(PREFIX)/bin/buildpack-nodejs-run
