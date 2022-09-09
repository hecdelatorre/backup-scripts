#!/bin/bash
count=0
for i in *
do
  if [[ $i == *.tar* ]]
  then
    echo "File $((count++))"
    tar -xf "$i" && rm -f "$i"
    echo "End $(date +"%H:%M:%S - %d/%m/%Y")"
  fi
done
