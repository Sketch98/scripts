#!/bin/sh

pic_folder=$(browse.sh -d "$XDG_PICTURES_DIR")
[ -z "$pic_folder" ] && exit 1
sxiv -bfoqt "$pic_folder" | dragon -x -a -i -I
