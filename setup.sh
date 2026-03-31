#!/bin/bash
# ============================================================
# Setup - Technique 1: SUID Binary Abuse
# ============================================================

# Create a low-privilege user
useradd -m -s /bin/bash labuser
# useradd -m -s /bin/bash ubuntu
echo "labuser:labpassword" | chpasswd
echo "ubuntu:ubuntu" | chpasswd

# Set SUID bit on 'find' binary
chmod u+s /usr/bin/find

echo "[+] SUID challenge is ready."
echo "[+] Login as: labuser:labpassword"
echo "[+] Find the SUID binary and escalate!"
