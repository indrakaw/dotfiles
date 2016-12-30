#!/usr/bin/env bash

set -e

printf "Initialing base16-builder..."

if command -v base16-builder > /dev/null 2>&1; then
  echo "OK!"

  printf "Exporting Xresources colors..."
  base16-builder -s ./scheme.yml -t xresources -b dark > ./build/Xresources
  # echo "! load man page with color
  # *VT100.colorBDMode:     true
  # *VT100.colorBD:         base08
  # *VT100.colorULMode:     true
  # *VT100.colorUL:         base0C
  # " >> ./build/Xresources
  xrdb -load ~/.Xresources
  echo "OK!"

  printf "Exporting Shell colors..."
  base16-builder -s ./scheme.yml -t linux-console.ejs > ./build/shell.sh
  base16-builder -s ./scheme.yml -t shell -b dark >> ./build/shell.sh
  echo "OK!"

  printf "Exporting Fish-shell syntax hightligter colors..."
  base16-builder -s ./scheme.yml -t fish-syntax.ejs > ./build/syntax.fish
  echo "OK!"




else
  echo "! no colors configurated" > ./build/Xresources
  echo "base16-builder is required. Please install."
fi
