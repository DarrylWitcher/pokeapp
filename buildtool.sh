#!/bin/bash

DESTINATION=/c/Users/darry/bin/pokeapp

install() {
	echo "Installing to $DESTINATION..."
	cp pokeapp $DESTINATION
}

uninstall() {
	echo "Uninstalling to $DESTINATION..."
	rm "$DESTINATION"
}

test() {
	echo "Testing ..."
	./pokeapp num Grass > numGrass.actual
	cmp numGrass.actual numGrass.expected || "numGrass test failed"
}

"$@"

