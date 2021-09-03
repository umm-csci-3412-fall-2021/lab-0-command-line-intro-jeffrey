#!/usr/bin/bash

#This is the scripting file for the cleaning rountine

#Uses first argument for file that must be cleaned

clean_file=$1

#Identifies main directory

user_dir="$(pwd)"

#Creates temperary directory

temp_dir="$(mktemp -d)"

#Stores base name of archive file without extention 

base_name=$(basename "$clean_file" .tgz)

#Extract components of file to be cleaned into temperary file

tar -xzf "$clean_file" -C "$temp_dir"

#deletes every file in the temperary directory with "DELTETE ME!" in it

grep -lr "DELETE ME!" "$temp_dir" | xargs rm -f 

#Enters the temperary directory

cd "$temp_dir" || exit

#Extracts the cleaned directory to the main directory with its new name

tar -czf "$user_dir"/cleaned_"$clean_file" "$base_name"
