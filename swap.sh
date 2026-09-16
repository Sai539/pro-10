#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name: 
# Roll Number: 
# =====================================

# Write your commands below

# 1. Allocate a 2GB file for swap space
sudo fallocate -l 2G /swapfile

# 2. Restrict permissions so only root can read/write
sudo chmod 600 /swapfile

# 3. Set up the file as Linux swap area
sudo mkswap /swapfile

# 4. Enable the swap space immediately
sudo swapon /swapfile

# 5. Make swap persistent across reboots by adding it to /etc/fstab
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# 6. Verify the swap activation
sudo swapon --show
