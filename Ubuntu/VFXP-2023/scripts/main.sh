#!/bin/bash
######### Created by Maize @ NanoVFX #########
######### THIS MUST BE RUN AS ROOT, Software dependancies will be installed and this cannot happen with out root.
######### if you are concerned, please feel free to browse the code. take a look at the repositories and the software within
######### you can verify its authenticity your self.

main(){
        if [ "$EUID" -ne 0 ]; then
            echo "This script must be run as root."
            exit 1
        else
            echo "######## Program Begin: Please note, This program installs software that may be needed by your software packages. It is meant to have all the software installed. skipping a step may cause the installations to fail or be incomplete, options are given because i believe you should have control.########."

            # -------- #
            # Build prerequisites
            echo "PLEASE WRITE THE FULL yes or no" # TODO add y,n and capital variants as acceptable answers
            read -p "Check to make sure You have the correct dev software? Yes or No" bscr_ans

            if [ "$bscr_ans" = "yes"]; then
                echo "installing basic development tools that are needed, if you already have them this will check and skip over those."

                ./buildenv.sh

                    # Check the exit status of the buildenv.sh script
                    if [ $? -eq 0 ]; then
                        echo "The buildenv.sh script was successful in installing all relevant software."
                    else
                        echo "The buildenv.sh script encountered an error."
                    fi

            else
                echo "Error cannot find build script"

            read -p ("Check Python Version? This is an important step. It is not recommended to skip setting up the correct python version install, Yes or no?")



}

main
