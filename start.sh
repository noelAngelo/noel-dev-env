#!/usr/bin/env fish

# SETTING VARIABLES
set ANSIBLE_DIR ~/.ansible

function setup_ansible
    # CHECK IF DIRECTORY ALREADY EXISTS
    if [ -d $ANSIBLE_DIR ] && [ ! -L $ANSIBLE_DIR ] 
        echo "[!] Directory $ANSIBLE_DIR already exists." 

    else
        # CREATE ANSIBLE DIRECTORY
        mkdir $ANSIBLE_DIR
        echo "[+] Directory $ANSIBLE_DIR created." 
    end
end

function setup_homebrew
    # CHECK IF HOMEBREW IS INSTALLED
    if type -q brew
        brew update
        echo "------------"
        echo "[!] Homebrew is already installed"
    
    else
        # Install Homebrew
        echo "Installing Homebrew ..." 
        ruby -e "(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        echo "Successfully installed Homebrew" 
    end
end

# RUN SETUP FUNCTIONS
setup_ansible
setup_homebrew

# INSTALL ANSIBLE
if type -q ansible
    echo "[!] Ansible is already installed"
else
    brew install ansible
end