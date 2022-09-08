#!/bin/bash
count=0
for i in *
do
  if ! [[ $i == "tarxz.sh" ]] && ! [[ $i == *.tar.* ]]
  then
    echo "File $((count++))"
    tar -Jcvf "$i.tar.xz" "$i" && rm -vrf "$i"
    echo "End $(date +"%H:%M:%S - %d/%m/%Y")"
  fi
done
