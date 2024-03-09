#!/bin/sh
PATH="/etc/apt/sources.list.d"

    check_exists(){
        for file in "$@"; do
            if [ -f '$file' ]; then
                echo "File '$file' exists skipping"
            else
                echo "Doesnt exist...Creating entry"
                add-apt-repository ppa:kelebek333/mint-tools -y
                add-apt-repository ppa:apt-fast/stable -y
                add-apt-repository ppa:zeehio/libxp -y
                add-apt-repository ppa:linuxuprising/libpng12 -y
            fi
        done
    }

    add_repo(){

    check_exists "kelebek333-ubuntu-mint-tools-jammy.list"
    check_exists "apt-fast-ubuntu-stable-jammy.list"
    check_exists "zehehio-ubuntu-libxp-jammy.list"
    check_exists "linuxuprising-ubuntu-libpng12-jammy.list"


    }
