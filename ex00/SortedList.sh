#!/bin/bash

cat histoire.txt | tr " " "\n" | sort -ur > sortedList.txt

input="sortedList.txt"

while IFS= read -r line
do
  printf "$line: "
  printf `grep -o $line histoire.txt | wc -l`
  printf "\n"
  done < "$input"

  rm sortedList.txt