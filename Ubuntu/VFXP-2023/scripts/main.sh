#!/bin/sh
######### Created by Maize @ NanoVFX #########
######### THIS MUST BE RUN AS ROOT, Software dependencies will be installed and this cannot happen without root.
######### If you are concerned, please feel free to browse the code. Take a look at the repositories and the software within. You can verify its authenticity yourself.

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

main() {
    if [ "$EUID" -ne 0 ]; then
        echo "This script must be run as root."
        exit 1
    else
        echo "######## Program Begin: Please note, This program installs software that may be needed by your software packages
. It is meant to have all the software installed. Skipping a step may cause the installations to fail or be incomplete EXCEPT 'QOL Section (This does not require install at all, and neither does the package installs such as maya, pre reqs do in order to install packages and run them correctly)' , options are given because I believe you should have control.########."
        # Build prerequisites
        echo " "
        echo "PLEASE WRITE THE FULL yes or no" # TODO add y,n and capital variants as acceptable answers
        read -p "Check to make sure You have the correct dev software? Yes or No: " bscr_ans
        echo " "
        if [ "$bscr_ans" = "yes" ]; then
            echo "Installing basic development tools that are needed. If you already have them, this will check and skip over those."
            . "$SCRIPT_DIR/buildess.sh"
            check_bse_soft

            # Check the exit status of the buildenv.sh script
            if [ $? -eq 0 ]; then
                echo "The buildess.sh script was successful in installing all relevant software."
            else
                echo "The buildenv.sh script encountered an error."
            fi
        else
            echo "Error: Cannot find build script"
        fi
        if [ $? -eq 0 ]; then
            read -p "Check Python Version? This is an important step. It is not recommended to skip setting up the correct python version install, Yes or no? " pycheck_q
            if [ "$pycheck_q" = "yes" ]; then
                . ./python.sh
            else
                echo "Skipping python check / install..."
            fi
        fi
        echo ""
        read -p "Would you like to get some quality of life software? " qol_q
            if [ "$qol_q" = "yes" ]; then
                . "$SCRIPT_DIR/qol.sh"
                usrchoice
            else
                echo "Skipping..."
    
            fi
    
    
    fi
}

main
