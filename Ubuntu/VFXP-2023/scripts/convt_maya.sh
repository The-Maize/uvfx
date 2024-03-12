#!/bin/bash
######### Created by Maize @ NanoVFX #########


SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
DEB_DIR="$SCRIPT_DIR/../Maya/DEBS"
DWNLD_RPM_DIR="$SCRIPT_DIR/../Maya/RPMS"

    convert(){
        cd "$DWNLD_RPM_DIR" || { echo "Failed to change directory to $DWNLD_RPM_DIR"; exit 1; }

        if [ -f *.rpm ]; then
            echo " "
            echo "Relevant Files Exist... Converting..., THIS CAN TAKE A LONG TIME, PLEASE WAIT ITS NOT FROZEN..."
            echo " "
            sudo alien *.rpm
            mv *.deb $DEB_DIR

            read -p "Do you want to install these now? " install_q
                if [ "$install_q " = "yes" ]; then
                    ./inst_maya.sh
                else
                    echo " Skipping installation. Manual install will be required!... "
                fi
        fi

    #TODO Add Catch function to return to download options
        else
            echo " "
            echo "Files do not exist, Skipping"

        fi
    }


    rpm_cleanup(){
        read -p "Would you like to cleanup 'delete' the rpm files from your system? " rpmclean_q
            if [ "$rpmclean_q" = "yes" ]; then
                rm *.rpm
            else
                echo "Leaving the rpm files in: $DWNLD_RPM_DIR if you want to access them later"
            fi
    }
