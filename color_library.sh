#!/bin/sh
#Based on post at:
#http://www.reddit.com/r/linux/comments/qagsu/easy_colors_for_shell_scripts_color_library/
#
# add 'source color_library.sh -q' to your scripts for quick coloring
# if you forget the -q your script'll spit out a big block of colors

normal=`printf "\e[0m"`
bold=`printf "\e[1m"`
dim=`printf "\e[2m"`
italic=`printf "\e[3m"`
underline=`printf "\e[4m"`
blink=`printf "\e[5m"`
reverse=`printf "\e[7m"`
hidden=`printf "\e[8m"`
strickthrough=`printf "\e[9m"`
black=`printf "\e[30m"`
red=`printf "\e[31m"`
green=`printf "\e[32m"`
yellow=`printf "\e[33m"`
blue=`printf "\e[34m"`
magenta=`printf "\e[35m"`
aqua=`printf "\e[36m"`
gray=`printf "\e[37m"`
darkgray=`printf "\e[90m"`
lightred=`printf "\e[91m"`
lightgreen=`printf "\e[92m"`
lightyellow=`printf "\e[93m"`
lightblue=`printf "\e[94m"`
lightmagenta=`printf "\e[95m"`
lightaqua=`printf "\e[96m"`
white=`printf "\e[97m"`
default=`printf "\e[39m"`
BLACK=`printf "\e[40m"`
RED=`printf "\e[41m"`
GREEN=`printf "\e[42m"`
YELLOW=`printf "\e[43m"`
BLUE=`printf "\e[44m"`
MAGENTA=`printf "\e[45m"`
AQUA=`printf "\e[46m"`
GRAY=`printf "\e[47m"`
DARKGRAY=`printf "\e[100m"`
LIGHTRED=`printf "\e[101m"`
LIGHTGREEN=`printf "\e[102m"`
LIGHTYELLOW=`printf "\e[103m"`
LIGHTBLUE=`printf "\e[104m"`
LIGHTMAGENTA=`printf "\e[105m"`
LIGHTAQUA=`printf "\e[106m"`
WHITE=`printf "\e[107m"`
DEFAULT=`printf "\e[49m"`

if [ "$1" != '-q' ]; then
	echo "${bold}bold 1${normal}"
	echo "${dim}dim 2${normal}"
	echo "${italic}italic 3${normal}"
	echo "${underline}underline 4${normal}"
	echo "${blink}blink 5${normal}"
	echo "${reverse}reverse 7${normal}"
	echo "${hidden}hidden${normal} hidden 8"
	echo "${strickthrough}strickthrough 9${normal}"
	echo "${black}${WHITE}black 30${normal}        ${BLACK}BLACK 40${normal}"
	echo "${red}red 31${normal}          ${RED}RED 41${normal}"
	echo "${green}green 32${normal}        ${GREEN}${black}GREEN 42${normal}"
	echo "${yellow}yellow 33${normal}       ${YELLOW}${black}YELLOW 43${normal}"
	echo "${blue}blue 34${normal}         ${BLUE}BLUE 44${normal}"
	echo "${magenta}magenta 35${normal}      ${MAGENTA}${black}MAGENTA 45${normal}"
	echo "${aqua}aqua 36${normal}         ${AQUA}${black}AQUA 46${normal}"
	echo "${gray}gray 37${normal}         ${GRAY}${black}GRAY 47${normal}"
	echo "${default}default 39${normal}      ${DEFAULT}DEFAULT 49${normal}"
	echo "${darkgray}darkgray 90${normal}     ${DARKGRAY}DARKGRAY 100${normal}"
	echo "${lightred}lightred 91${normal}     ${LIGHTRED}${black}LIGHTRED 101${normal}"
	echo "${lightgreen}lightgreen 92${normal}   ${LIGHTGREEN}${black}LIGHTGREEN 102${normal}"
	echo "${lightyellow}lightyellow 93${normal}  ${LIGHTYELLOW}${black}LIGHTYELLOW 103${normal}"
	echo "${lightblue}lightblue 94${normal}    ${LIGHTBLUE}${black}LIGHTBLUE 104${normal}"
	echo "${lightmagenta}lightmagenta 95${normal} ${LIGHTMAGENTA}${black}LIGHTMAGENTA 105${normal}"
	echo "${lightaqua}lightaqua 96${normal}    ${LIGHTAQUA}${black}LIGHTAQUA 106${normal}"
	echo "${white}white 97${normal}        ${WHITE}${black}WHITE 107${normal}"
	echo "normal 0 undoes all other SGR commands."
	echo "all SGR commands are \e[a;b;cm with a, b, and c being numbers."
	echo "SGR commands are not limited to 3 inputs, ofc. \e means escape."
fi
