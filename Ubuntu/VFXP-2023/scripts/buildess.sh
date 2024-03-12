#!/bin/sh
######### Created by Maize @ NanoVFX #########

INSOFT= "build-essential subversion cmake libx11-dev libxxf86vm-dev libxcursor-dev libxi-dev libxrandr-dev libxinerama-dev libegl-dev ibwayland-dev wayland-protocols libxkbcommon-dev libdbus-1-dev linux-libc-dev libzstd-dev libepoxy-dev dpkg-dev debhelper zlib1g-dev"

check_bse_soft(){
    echo "Checking if you have basic build and development software installed..."
    msng_pkgs=""

    for pkg in $INSOFT; do
        if ! dpkg -| grep "^ii $pkg "; then
            msng_pkgs+="$pkg"
        fi
    done

    if [ -n "$msng_pkgs" ]; then
        echo "these packages are missing: $msng_pkgs, Installing them..."
        sudo apt-get update
        sudo apt install $msng_pkgs

    else
        echo "All required dev software is already installed."
    fi

}

check_bse_soft