#!/bin/bash
######### Created by Maize @ NanoVFX #########


SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
DEB_DIR="$SCRIPT_DIR/../Maya/DEBS"



install_maya(){
    echo " "
    echo " Please Wait While the installation completes "
    cd $DEB_DIR
    sudo apt install *.deb -y

    echo "Install complete."

    cd $SCRIPT_DIR
}
