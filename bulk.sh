#!/usr/bin/env sh

awk '{ system("./noah.sh \"" $1 "\" \"" $2 "\" \"" $3 "\"") }' './targets.txt'
