#!/bin/sh

rm -rf build/*
rm -rf docs/*

cp src/mkaffnet.maia build/

cp build/mkaffnet.maia bin/

chmod 755 bin/*

jsdoc -c ./jsdoc.json -d ./docs ./package.json ./src

#cp manual/* docs/