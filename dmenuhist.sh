#!/bin/sh

[ -z "$1" ] && exit 1
items="$(grep "$1" "$HISTFILE")"
[ -z "$items" ] && exit 1
sel="$( echo "$items" | tac | dmenu -l 20)"
[ -z "$sel" ] && exit 1
xdotool type "$sel"
