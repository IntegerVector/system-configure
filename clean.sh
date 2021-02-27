#!/bin/bash

echo "clear.sh" $@ "script, designed for elementary OS"

sudo apt autoclean
sudo apt clean

set -eu
sudo snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
    done
