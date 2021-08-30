#!/usr/bin/env bash

for dir in */; do
path=$PWD
file="$path/$dir";
#echo "$file";
cd "$file";
#ls;
soxi -D *.wav | numsum;
#echo "$PWD";
cd "$OLDPWD"
#echo "$PWD";
done


