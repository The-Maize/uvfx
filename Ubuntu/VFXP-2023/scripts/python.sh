#!/bin/bash

check_python(){
    python_version=$(python --version 2>$1 | cut -d ' ' -f2)
    if [ $? -eq 0 ]; then
        echo "Python Version: $python_version"

        if [["$(printf '%s\n ' "3.10" "python_version" | sort -v | head -n1 )" == "3.10"]]
        echo "the version is already 3.10 or greater, No Action Required"

        else
            echo "Python 3.10 minimum is not installed, Installing"
            sudo apt-get install python3.10 -y
        fi

    else
        echo "Python is not installed or found in PATH"
    fi
    }

    check_python
