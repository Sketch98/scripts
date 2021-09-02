#!/bin/sh

cd ~ || exit
rm -r zig index.json || :
wget https://ziglang.org/download/index.json || exit
tarball="$(JSON.sh -b < index.json | grep '\[\"master\",\"x86_64-linux\",\"tarball\"\]')"
tarball="${tarball%\"}"
url="${tarball##*\"}"
file="${url##*/}"
wget "$url" || exit
tar xf "$file"
mv "${file%.tar.xz}" zig
rm index.json "$file"
