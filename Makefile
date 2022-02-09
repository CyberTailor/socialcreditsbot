PREFIX ?= /usr/local

socialcreditsbot: $(shell find . -name "*.go")
	go build -o socialcreditsbot

install: socialcreditsbot
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install $< $(DESTDIR)$(PREFIX)/bin

.PHONY: install
