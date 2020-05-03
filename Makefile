.DEFAULT_GOAL := all

all:	links packages

links:
	./links.sh

packages:
	./packages.sh
