#!/bin/bash
######### Created by Maize @ NanoVFX #########
######### This script gets Autodesk Maya from one of 2 places.
######### You can specify getting from official installer and converting Maya to .deb files
######### that are compatible with Ubuntu and its variants,
######### Or you can specify getting already converted Maya packages i have done for you saving CPU cycles and time.

get_maya_from_nano(){

        echo "Obtaining pre-converted Maya .deb files"
        echo " "
        SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
        DWNLD_DIR="$SCRIPT_DIR/../Maya/debs"

        wget -c -q -P --show-progress "$DWNLD_DIR" https://DOWNLOAD_LOCATION.com/SPECIFIC_FILES
}


get_maya(){

    read -p "Do you want to obtain Maya from NanoVFX already converted? (fastest)" _answer
    echo "  "

    if [ "_answer" = "yes" ]; then
        maya_from_nano

    else
       read -p "Do you already have the RPM Files needed in the rpm folder provided in the Maya folder?" po_answer
        echo " "
        if [ "po_answer" = "yes" ]; then
            echo "moving to conversion"
            ./cnvt_maya.sh
}

get_maya
