#!/bin/bash
x=$(date -I)-$1.md
echo $x
towrite="---\nlayout: post\ntitle: $1\ndate: $(date --iso-8601=minutes)\ntags: \n---\n"
touch $x; echo -e "$towrite">>$x
