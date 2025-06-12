#!/bin/bash

# Script should be run as root
if [[ "${UID}" -ne 0 ]]; then
    echo "Please run with sudo or root."
    exit 1
fi

# Must have at least one argument
if [[ "$#" -lt 1 ]]; then
    echo "Usage: ${0} USER_NAME [COMMENT]..."
    echo 'Create a user with name USER_NAME and optional COMMENT.'
    exit 1
fi

USER_NAME="${1}"
shift
COMMENT="${*}"

# Generate password
PASSWORD=$(date +%s%N)

# Create user
useradd -c "${COMMENT}" -m "${USER_NAME}"
if [[ $? -ne 0 ]]; then
    echo "The account could not be created."
    exit 1
fi

# Set password (Portable way)
echo "${USER_NAME}:${PASSWORD}" | chpasswd
if [[ $? -ne 0 ]]; then
    echo "The password could not be set."
    exit 1
fi

# Force password change on first login
passwd -e "${USER_NAME}"

# Show output
echo
echo "User '${USER_NAME}' created successfully."
echo "Password : ${PASSWORD}"
echo "Hostname : $(hostname)"

