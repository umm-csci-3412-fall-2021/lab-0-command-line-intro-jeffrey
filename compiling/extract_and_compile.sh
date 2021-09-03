#!/bin/bash
# Extract and compile

#Creates a variable of the first argument passed to the script

tarNum = $1

#Extracts, compiles, and creates archive 

tar -xzf NthPrime.tgz

#Enters newly created file

cd NthPrime || exit


