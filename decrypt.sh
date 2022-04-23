#!/bin/bash


PATH=/Documents/TP_encrypt_decrypt_service

while [[ -f $PATH/todecrypt/todecrypt.txt ]]; do

	python3 $PATH/ressources/decrypt.py $PATH/todecrypt/todecrypt.txt $PATH/decypted/decrypted.txt

	echo "File decrypted" >>/var/log/encrypt/decrypt.out


	rm $PATH/tocrypted/todecrypt.txt

	sleep 2

done
