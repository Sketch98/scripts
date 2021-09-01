#!/bin/sh

[ -z "$1" ] && exit 1
grep "$1" "$HISTFILE" | tac
