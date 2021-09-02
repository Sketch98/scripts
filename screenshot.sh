#!/bin/sh

d="$XDG_PICTURES_DIR/screenshots"
[ -d  "$d" ] || mkdir "$d"
p="$d/$(date +%Y-%m-%d-%H-%M-%S).png"
maim "$1" "$p"
