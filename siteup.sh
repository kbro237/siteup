#!/bin/sh

# checks whether a site's given in stdin; if not, it asks for the site
if ! [ -e $1 ]; then
    site="$1"
    echo "Checking $site ..."
else
    echo "Site to check: \c"
    read site
fi

# the time in seconds to wait between each check
interval="300"

# choose colors to give a bit of accent
color="\x1b[1;31m"
nocolor="\x1b[0m"

while true; do
    if curl -s "$site" > /dev/null
    then
        echo "$site is up!" | growlnotify -p 1
        echo "${color}`date +%H:%M` ${nocolor}> ${color}$site is up!${nocolor}"
        exit
    else
        echo "${color}`date +%H:%M` ${nocolor}> $site is still down."
    fi
    sleep $interval
done
