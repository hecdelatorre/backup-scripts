#!/bin/bash
count=0
for i in *
do
  if [[ $i == *.tar.* ]]
  then
    echo "File $((count++))"
    tar -xvf "$i" && rm -vf "$i"
    echo "End $(date +"%H:%M:%S - %d/%m/%Y")"
  fi
done
