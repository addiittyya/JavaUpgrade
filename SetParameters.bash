#!/bin/bash
FILE="/etc/ansible/variable/javavar.txt"

#Check if file exists and remove if it does.
if [ -e $FILE ]
then
    echo "File Exists!!"
	rm $FILE
else
    echo "File does not Exists!!"
fi

#Create parameters file.
touch $FILE

#Set parameters
if [ "$Action" == "Upgrade" ]
then
	echo "action: present" > $FILE
	echo "package: java-1.8.0-openjdk.x86_64" >> $FILE
else
	echo "action: absent" > $FILE
	echo "package: java*" >> $FILE
fi