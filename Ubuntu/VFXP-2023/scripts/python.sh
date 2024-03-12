#!/bin/sh
######### Created by Maize @ NanoVFX #########

check_python() {
    python_version=$(python3 --version 2>&1 | cut -d ' ' -f2)
    major_minor_version=$(echo "$python_version" | cut -d '.' -f1-2)  # Extracting only major.minor version

    if [ $? -eq 0 ]; then
        echo "Python Version: $python_version"

        if [[ "$major_minor_version" == "3.10" || "$major_minor_version" > "3.10" ]]; then  # Compare major.minor version
            echo "The version is already 3.10 or greater, No Action Required"
        else
            echo "Python 3.10 minimum is not installed, Installing"
            sudo apt-get install python3.10 -y
        fi

    else
        echo "Python is not installed or found"
    fi

    return 0
}

check_python
