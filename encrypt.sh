#!/bin/bash

PATH=/home/$USER/TP_service

while [[ -f $PATH/tocrypt/tocrypt.txt ]]; do

	python3 $PATH/ressources/crypt.py $PATH/tocrypt/tocrypt.txt $PATH/todecrypt/todecrypt.txt
	
	echo "File crypted" >>/var/log/encrypt/crypt.out
	
	rm $PATH/tocrypt/tocrypt.txt

	sleep 2
done

