#!/bin/sh

text='ABCDEFGHIJKLM\nNOPQRSTUVWXYZ\nabcdefghijklm\nnopqrstuvwxyz\n1234567890\n!@$\%(){}[]'
images_dir="fontpreviews"
[ -d "$images_dir" ] || mkdir -p "$images_dir"

for font in $(convert -list font | awk -F: '/^[ ]*Font: /{print substr($NF,2)}'); do
    convert -size 600x400 xc: -gravity center -pointsize 42 -font "$font" -annotate +0+0 "$text" -flatten "$images_dir/$font.png"
done

sxiv -foqr "$images_dir"
