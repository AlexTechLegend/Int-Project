#!/bin/bash

# Prompt user for resource group name
read -p "Enter resource group name: " resource_group

# Prompt user for virtual machine name
read -p "Enter virtual machine name: " vm_name

# Prompt user for location
echo "Choose a location 
1. eastus
2. westus"
read -p "Enter your choice: " answer

case $answer in
    1) location="eastus" ;;
    2) location="westus" ;;
    *) echo "Invalid choice. Exiting." && exit 1 ;;
esac

# Prompt user for the VM Image
echo "Choose a VM image
1. Windows Server 2019 
2. Ubuntu 18.04-LTS 
3. Windows 10 Pro"
read -p "Enter your choice: " answer2

case $answer2 in
    1) image="MicrosoftWindowsServer:WindowsServer:2019-datacenter" ;;
    2) image="Canonical:UbuntuServer:18.04-LTS:latest" ;;
    3) image="MicrosoftWindowsDesktop:Windows-10:20h2-pro:latest" ;;
    *) echo "Invalid choice. Exiting." && exit 1 ;;
esac

# Prompt user for the VM Image size
echo "Choose a VM size: 
1. Standard_B1ls 1 vCPUs 0.5GB RAM 
2. Standard_B1s 1 vCPUs 1GB RAM 
3. Standard_B2s 2 vCPUs 4GB RAM"
read -p "Enter your choice: " answer3

case $answer3 in
    1) vm_size="Standard_B1ls" ;;
    2) vm_size="Standard_B1s" ;;
    3) vm_size="Standard_B2s" ;;
    *) echo "Invalid choice. Exiting." && exit 1 ;;
esac

# Prompt user for admin username
read -p "Enter admin username: " admin_user

# Prompt user for admin password
read -s -p "Enter admin password: " admin_password

# Create the resource group
az group create --name "$resource_group" --location "$location"

# Create the virtual machine
az vm create \
  --resource-group "$resource_group" \
  --name "$vm_name" \
  --image "$image" \
  --admin-username "$admin_user" \
  --authentication-type password \
  --admin-password "$admin_password" \
  --generate-ssh-keys \
  --size "$vm_size"
