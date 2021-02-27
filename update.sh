#!/bin/bash

echo "update.sh" $@ "script, designed for elementary OS"

echo -n "Update DEBs? [Y/n]: "
read update_debs

echo -n "Update snaps [Y/n]: "
read update_snaps

echo -n "Update flatpaks [Y/n]: "
read update_flatpaks 

if [ $update_debs == "Y" ] || [ $update_debs == "y" ]
then
    sudo apt update
    sudo apt upgrade -y
fi

if [ $update_snaps == "Y" ] || [ $update_snaps == "y" ]
then
    sudo snap refresh
fi

if [ $update_flatpaks == "Y" ] || [ $update_flatpaks == "y" ]
then
    flatpak update -y
fi

echo ""
echo "All Done!"
