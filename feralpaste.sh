#!/bin/bash
[ $# -ge 1 -a -f "$1" ] && input="$1" || input="-"
mkdir -p ~/www/$(whoami).$(hostname)/public_html/pastes
tmpfile=$(mktemp | awk -F'.' '{print $2;}')
cp $input ~/www/$(whoami).$(hostname)/public_html/pastes/$tmpfile.txt
echo https://$(hostname -f)/$(whoami)/pastes/$tmpfile.txt
