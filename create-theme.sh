#!/bin/bash

grunt build
rm -rf build && mkdir -p build/attila2

shopt -s extglob
cp -r ./!(build|node_modules) build/attila2
cd build/attila2
rm Gruntfile.js package-lock.json package.json
cd ..
zip -r attila2.zip attila2
cd ..
