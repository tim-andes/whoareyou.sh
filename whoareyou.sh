#!/bin/bash
# Create a readable user report for users in the machine.

# Variables
echo -n "Which user? "
read user

# Main
# Check if user exists
echo "

"
if
	grep -Eiq "^$user" /etc/passwd; then
	# User found.
	echo "User found..."
	echo "Creating report...
	"
else 
	echo "$user does not exist. Please verify name and spelling."
fi

echo "User report for $user"
echo "=====================
"

echo "Real Name:"
grep $user /etc/passwd | awk -F":" '{ print $5 }'
echo "---
"

echo "Member of Groups:"
groups $user
echo "---
"

echo "Default Shell:"
grep $user /etc/passwd | awk -F":" '{  print $7 }'
echo "---
"

echo "Root Privileges?:"
# Check if user has root:
if [[ $EUID -eq 0 ]]; then
	echo "$user is the root user."
else
	echo "$user is not root.
Sudo?"
	#Check if user has sudo privileges
	sudo -v
	if [ $? -eq 0 ]; then
		echo "$user has sudo privileges."
	else 
		echo "$user has no root or sudo privileges."	
	fi
fi
