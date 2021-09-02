#!/bin/sh

set -f

usage() {
	echo "browse.sh [-df] [target directory] [prompt]
-d browse directories only
-f browse files only"
}

dirs_only=0
files_only=0

while getopts 'df' arg; do
	case $arg in
		d) dirs_only=1;;
		f) files_only=1;;
		?) usage && exit 2;;
	esac
done
shift $((OPTIND - 1))

[ $dirs_only -ne 0 ] && [ $files_only -ne 0 ] && echo "cannot browse only directories and only files." && exit 2

target=$1
[ -z "$target" ] && target=$PWD
[ ! -d "$target" ] && echo "target directory ${target} does not exist" && exit 2
target=$(realpath "$target")
prompt=$2

while true; do
	p=$prompt
	[ -z "$p" ] && p=$target

	all_items=$(ls -1a --group-directories-first "$target" | grep -v '^\.*$')
	dirs=$(find "$target" -mindepth 1 -maxdepth 1 -type d | sed -e 's,^.*/,,g' | sort -f)
	num_items=$(echo "$all_items" | wc -l)
	if [ -z "$all_items" ]; then
		sel=$(printf "Select this directory\n.." | dmenu -p "$p" -l 2)
		ec=$?
	elif [ "$num_items" -eq 1 ]; then
		sel=$all_items
		ec=0
	elif [ $dirs_only -ne 0 ] && [ -z "$dirs" ]; then
		echo "$target"
		exit 0
	else
		[ $dirs_only -ne 0 ] && items="Select this directory\n..\n$dirs" || items="..\n$all_items"
		sel=$(echo "$items" | dmenu -p "$p" -l 20 -g 3)
		ec=$?
	fi
	[ $ec -ne 0 ] && exit $ec
	
	[ "$sel" = "Select this directory" ] && echo "$target" && exit 0
	newt=$(realpath "$target/$sel")
	if [ -e "$newt" ]; then
		target="$newt"
		if [ ! -d "$target" ]; then
			echo "$target"
			exit 0
		fi
	fi
done
