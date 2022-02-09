PREFIX ?= /usr/local

POSTGRES_USER ?= postgres
POSTGRES_DB ?= socialcreditsbot

socialcreditsbot: $(shell find . -name "*.go")
	go build -o socialcreditsbot

install: socialcreditsbot
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install $< $(DESTDIR)$(PREFIX)/bin

database:
	dropdb -U $(POSTGRES_USER) --if-exists $(POSTGRES_DB)
	createdb -U $(POSTGRES_USER) $(POSTGRES_DB)
	psql $(POSTGRES_USER) -d $(POSTGRES_DB) -a < postgres.sql

.PHONY: database install
