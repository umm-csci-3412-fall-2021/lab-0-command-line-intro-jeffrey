#!/bin/bash
# Extract and compile

#Extracts and creates archive 

tar -xzf NthPrime.tgz

#Enters newly created file

cd NthPrime || exit

#Compiles Program

gcc -o NthPrime main.c nth_prime.c

#Runs program with first arugument presented

./NthPrime "$1"
