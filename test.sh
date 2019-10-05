#!/bin/bash

cyan=`tput setaf 51`
green=`tput setaf 46`
yellow=`tput setaf 226`
red=`tput setaf 196`

for filename in `ls "$(pwd)/$1/input"`; 
do
    printf "${yellow}Running test case: ${cyan}$filename"
    ./$2 ./$1/input/$filename > $filename.result
    temp=`diff -u ./$1/answer/$filename $filename.result`

    if [ $? -eq 0 ]
    then
        printf "  ==>  ${green}Pass!"
    else 
        printf "  ==>  ${red}Fail! Please check the diff output message below:\n"
    fi

    echo "$temp" | sed "s/^-/$(tput setaf 1)&/; s/^+/$(tput setaf 2)&/; s/^@/$(tput setaf 6)&/; s/$/$(tput sgr0)/"
    
    rm -f $filename.result
done
