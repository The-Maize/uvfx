#!/bin/bash

# testing

# Function to check if a repository exists
repository_exists() {
    local repo_name="$1"
    grep -q "^deb .*$repo_name" /etc/apt/sources.list /etc/apt/sources.list.d/*
}

# Function to add a repository
add_repository() {
    local repo_name="$1"
    sudo add-apt-repository "$repo_name"
    sudo apt update
}

# Example usage:
repo_to_add="ppa:apt-fast/stable"

if repository_exists "$repo_to_add"; then
    echo "Repository $repo_to_add already exists."
else
    add_repository "$repo_to_add"
    echo "Repository $repo_to_add added successfully."
fi

return 0
