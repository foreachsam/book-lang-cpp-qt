#!/usr/bin/env bash

# http://mesonbuild.com/Qt5-module.html
# http://mesonbuild.com/Quick-guide.html
# http://mesonbuild.com/Tutorial.html

meson build

cd build

ninja

./demo
