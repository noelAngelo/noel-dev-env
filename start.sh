#!/usr/bin/env zsh

# SETTING VARIABLES
ANSIBLE_DIR=~/.ansible

function setup_homebrew {
    echo "Installing Homebrew ..."
    ruby -e "(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Successfully installed Homebrew"
}

function setup_docker {
    echo "Installing Docker ..."
    brew install --cask docker
    echo "Successfully installed Docker"
}

function setup_ansible {
    echo "Creating Ansible directory: $ANSIBLE_DIR"
    mkdir -p $ANSIBLE_DIR
    echo "[+] Directory $ANSIBLE_DIR created."
    brew install ansible
    ansible-galaxy collection install community.general
}

# RUN SETUP FUNCTIONS
setup_ansible
setup_homebrew
setup_docker
