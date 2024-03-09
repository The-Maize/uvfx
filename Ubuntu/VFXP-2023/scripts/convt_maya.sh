#!/bin/bash
######### Created by Maize @ NanoVFX #########

script_dir="$(dirname "$(readlink -f "$0")")"

    convert(){
        for file in "$@"; do
            if [ -f '$file' ]; then
                echo "Relevant files exist, Converting"
                sudo alien *.rpm
            else
                echo "Files do not exist, Skipping..."
            fi
        done
    }

    install(){

    }

    dwnld_rpms(){
        while true; do
                read -p "Do you want this script to obtain the rpm files on your behalf, Type YES or NO ?" answer
                case "$answer" in
                    [Yy]|[Yy][Ee][Ss])
                        rpm_dir="$script_dir/rpms"
                        echo "Creating directory for the downloaded rpms in script dir.."
                        mkdir "$rpm_dir"

                        echo "Downloading RPM Files to '$rpm_dir'..."
                        wget "$rpm_dir""https://"
                break;;
                    [Nn]|[Nn][Oo])
                        echo "Skipping Download of files... Moving on..."
                break;;
                *)
                echo  "Invalid Response...Please enter Yes or No"
            esac
        done

    }

    maya(){
        read -p "Do you want to install Maya on Ubuntu. This script is specifically for ubuntu. If you are on a rpm based system please use the rpm based script instead!" install_answer

        if ["$install_answer" = "yes"]; then
        echo  "Checking for RPM's"
        convert "$rpm_dir/file1.rpm"

    }
