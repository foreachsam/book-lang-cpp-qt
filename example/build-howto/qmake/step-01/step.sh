#!/usr/bin/env bash

## step-00 : create project 「dir demo」
mkdir -p demo

cd demo

## step-01 : create file 「main.cpp」
cat > main.cpp << EOF
#include <QtCore>

int main(int argc, char *argv[])
{
	return 0;
}

EOF
