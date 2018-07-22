#!/usr/bin/env bash

g++ -o app main.cpp -fPIC $(pkg-config --libs --cflags Qt5Core)
