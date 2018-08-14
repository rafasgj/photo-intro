#!/bin/sh

x=`basename $1`
ext="${x##*.}"
file="a.${ext}"

convert "$1" -resize 2000x2000 -quality 80 ${file}
mv ${file} "$1"

