#!/bin/sh

num_screenshots=1
[ -n "$1" ] && [ "$1" -gt 1 ] 2>/dev/null && num_screenshots="$1"
cd "$XDG_PICTURES_DIR"/screenshots
ls | tail -$num_screenshots | dragon -x -a -i -I
