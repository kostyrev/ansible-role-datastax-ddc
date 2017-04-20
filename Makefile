SHELL=/usr/bin/env bash

.PHONY: all setup lint install

all: setup

setup: lint

install:
	@pip install --quiet --user -r requirements.txt

lint:
	@pre-commit uninstall
	@pre-commit install
