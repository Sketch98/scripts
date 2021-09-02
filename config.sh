#!/bin/sh

config_file=$(browse.sh -f "$XDG_CONFIG_HOME")
[ -z "config_file" ] && exit 1
foot "$EDITOR" "$config_file"
