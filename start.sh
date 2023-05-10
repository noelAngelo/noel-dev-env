#!/bin/bash

# Update the system
sudo apt update

# Install Ansible
sudo apt install -y ansible

# Install Snap
sudo apt install -y snapd

# Enable classic snap support (if not already enabled)
sudo snap install core
sudo snap refresh core

# Print installation status
echo "Ansible and Snap installed successfully."

# Verify Ansible installation
ansible --version

