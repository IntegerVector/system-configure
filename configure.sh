#!/bin/bash

echo "configure.sh" $@ "script, designed for elementary OS"

CONFIGURE_SWAPPINESS_OPTION="1"
CONFIGURE_SOUND_OPTION="2"
CONFIGURE_ALL="3"

function configure_swappiness {
    echo "configuring swappiness..."
    echo -e "vm.swappiness=1" | sudo tee -a /etc/sysctl.conf
}

function configure_sound {
    echo "configuring sound..."
    # ToDo
}

function selected_option_handler {
    IFS="," read -a options_array <<< $1

    for option in "${options_array[@]}"
    do
        case $option in
        $CONFIGURE_SWAPPINESS_OPTION)
            configure_swappiness
            ;;
        $CONFIGURE_SOUND_OPTION)
            configure_sound
            ;;
        $CONFIGURE_ALL)
            configure_swappiness
            configure_sound
            ;;
        esac 
    done
}

echo "Options to configure:"
echo "  1) swappiness"
echo "  2) sound"
echo "  3) configure all"
echo ""
echo -n "Type number of option (or several thru comma whithout spaces): "

read option_number
selected_option_handler $option_number
