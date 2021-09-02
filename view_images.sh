#!/bin/sh

target=$1
[ -z "$target" ] && target=$PWD
sxiv -boqt "$target"
