PREFIX ?= /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp bin/build $(PREFIX)/bin/buildpack-nodejs-build
	cp bin/json $(PREFIX)/bin/buildpack-nodejs-json
	cp bin/run $(PREFIX)/bin/buildpack-nodejs-run

uninstall:
	rm -f $(PREFIX)/bin/buildpack-nodejs-build
	rm -f $(PREFIX)/bin/buildpack-nodejs-json
	rm -f $(PREFIX)/bin/buildpack-nodejs-run
