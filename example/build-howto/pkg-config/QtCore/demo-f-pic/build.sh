#!/usr/bin/env bash

g++ -o app main.cpp $(pkg-config --libs --cflags Qt5Core)
