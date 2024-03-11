#!/bin/bash
######### Created by Maize @ NanoVFX #########

PATH="/etc/apt/sources.list.d"

    check_exists(){
        for file in "$@"; do
            if [ -f '$file' ]; then
                echo "File '$file' exists skipping"
            else
                echo "Doesn't exist...Creating entry"
                add-apt-repository ppa:apt-fast/stable -y

            fi
        done
    }

    add_repo(){
        check_exists "apt-fast-ubuntu-stable-jammy.list"

    }

    check_exists
