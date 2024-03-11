#!/bin/bash
######### Created by Maize @ NanoVFX #########
######### This script gets Autodesk Maya from one of 2 places.
######### You can specify getting from official installer and converting Maya to .deb files
######### that are compatible with Ubuntu and its variants,
######### Or you can specify getting already converted Maya packages i have done for you saving CPU cycles and time.

# TODO add Maya version selection option + change download location based on version selected

SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
DWNLD_DEB_DIR="$SCRIPT_DIR/../Maya/DEBS"
DWNLD_RPM_DIR="$SCRIPT_DIR/../Maya/RPMS"

#TODO Configure download locations / Upload preconv and rpms + Add Official
#TODO Add Official file extract and convert function

DWNLD_LOC_PRECON=https://PLEASEFILLMEIN.com
DWNLD_LOC_RPMS=https://PLEASEFILLMEIN.com
DWNLD_LOC_OFFICIAL=https://PLEASEFILLMEIN.com

get_maya_from_nano(){

        echo "Obtaining pre-converted Maya .deb files"
        echo " "
        mkdir "$DWNLD_DEB_DIR"
        wget -c -q -P --show-progress "$DWNLD_DEB_DIR" $DWNLD_LOC_PRECON
        echo " "
        read -p "Are you ready to install Maya?" inst_maya_q

            if [ "$inst_maya_q" = "yes" ]; then
                echo "Installing Maya Files to default location /usr/autodesk/"
                ./inst_maya.sh
            else
                echo "Skipping install..."
            fi
}


dwnld_rpms(){
    while true; do
            read -p "Do you want this script to obtain the rpm files on your behalf, Type YES or NO ?" answer
            case "$answer" in
                [Yy]|[Yy][Ee][Ss])
                    echo "Creating directory for the downloaded rpms in script dir..."

                    mkdir "$DWNLD_RPM_DIR"

                    echo "Downloading RPM Files to '$DWNLD_RPM_DIR'..."
                    wget "$DWNLD_RPM_DIR" $DWNLD_LOC_RPMS
            break;;
                [Nn]|[Nn][Oo])
                        echo "Skipping Download of files... Moving on..."
            break;;
            *)
            echo  "Invalid Response...Please enter Yes or No"
        esac
    done
    read -p "Do you want to convert the rpms now?" conv_rpm_q
    if [ "$conv_rpm_q" = "yes" ]; then
        echo "Moving to Convert RPMs...."
        ./conv_maya.sh
    else
        "Skipping..."
    fi
}



get_maya(){

    read -p "Do you want to obtain Maya from NanoVFX already converted? (fastest)" _answer
    echo "  "

    if [ "$_answer" = "yes" ]; then
        maya_from_nano

    else
        read -p "Do you already have the RPM Files needed in the rpm folder provided in the Maya folder?" po_answer
        echo " "
            if [ "$po_answer" = "yes" ]; then
                echo "moving to conversion"
                ./cnvt_maya.sh

            else
                echo "Skipping conversion of already possessed files..."
                echo " "

            read -p " Would you like to obtain RPM Files for Maya and Convert them?: " rpm_answer
            if [ "$rpm_answer" = "yes" ]; then
                dwnld_rpms

            else
                echo "Skipping..."
            fi

            read -p "Would you like to obtain the pre converted deb files: ?" dl_preconv_debs_q
            if [ "$dl_preconv_debs_q" = "yes" ]; then
                get_maya_from_nano

            else
                echo "Skipping..."
            fi
        fi
    fi
}

get_maya
