#!/bin/bash
num=0
fin=0
set -f
# word splitting intentional, globbing is disabled
# shellcheck disable=2046
while IFS=' %' read -r _ perc _; do
	[ -z "$perc" ] && continue
	num=$((num + 1))
	fin=$((perc == 100 ? fin + 1 : fin))
done <<< $(transmission-remote -l | grep -v '^Sum' | grep -vE '^[[:blank:]]+ID')
printf '%s\n' "$num($fin)"
set +f
