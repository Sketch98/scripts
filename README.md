# scripts

simple shell scripts that may be of interest to you

**color_library.sh** prints a bunch of colors to your terminal or source it in your script so you don't have to remember annoying SGR codes.

**count_torrents.sh** prints number of torrents and number of finished torrents for transmission. i use it in my status bar.

**fonts.sh** a simpler alternative to [fontpreview](https://github.com/sdushantha/fontpreview). this script generates all fonts so you can view them as you please in sxiv. mark as many as you like.

**grephist.sh** and **dmenuhist.sh** scripts i alias to h and hd for quickly serching my command history. dmenuhist.sh lets you select a command with dmenu and xdotool types it into your terminal so you only need to hit enter.

**update_zig.sh** download, extract, and rename latest zig master binary.

**browse.sh** a file or directory selector for dmenu.

**config.sh** select a config file with browse.sh and opens it in a new terminal.

**memes.sh** allows you to quickly find and select images to drag and drop into your browser. uses browse.sh, sxiv, and dragon.

**screenshot.sh** save screenshots in yyyy-mm-dd-time format. i bind 'screenshot.sh' to print for full screen screenshots and 'screenshot.sh -s' to shift+print to select a region for the screenshot.

**last_screenshot.sh** uses dragon to create a drag and drop box with your last screenshot. this script assumes your screenshots are kept in $XDG_PICTURES_DIR/screenshots and requires yyyy-mm-dd-time format to work.

**view_images.sh** look at pictures
