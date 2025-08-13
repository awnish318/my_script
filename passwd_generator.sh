#!/bin/bash

#its a simple password generator project

echo "welcome to password generator"

sleep 3

echo "please enter the length of password"

read pass_len

for p in $(seq 1);
do
	openssl rand -base64 48 | cut -c1-$pass_len

done


#here p in 1; means the loop runs only once
#openssl is tool for command line cryptography
#rand is used for generating random bytes.
#here base64 encode the output in base64 which includes number,letters,+,-

