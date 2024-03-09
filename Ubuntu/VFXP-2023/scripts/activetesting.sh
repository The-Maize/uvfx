 #!/bin/sh
    PATH="/etc/apt/sources.list.d"

    check_exists(){
        for file in "$@"; do
            if [ -f "$PATH/$file" ]; then
                echo "File '$file' exists skipping"
            else
                echo "Doesnt exist...Creating entry"
            fi
        done
    }

    add_repo(){

    check_exists "testtuxedo-os.list"

    }

    add_repo
