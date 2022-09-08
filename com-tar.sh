#!/bin/bash
count=0

echo -e "Choose the desired format\n0 - tar\n1 - tar.xz\n2 - tar.gz\n3 - tar.bz2\n4 - tar.tbz\n5 - tar.tb2"

read -t 4 option

for i in *
do
  if ! [[ $i == "com-tar.sh" ]] && ! [[ $i == *.tar.* ]]
  then
    echo "File $((count++))"
    echo $i

    if [[ $option == 0 ]]
    then
      tar -cf "$i.tar" "$i" && rm -vrf "$i"
    elif [[ $option == 1 ]]
    then
      tar -Jcf "$i.tar.xz" "$i" && rm -vrf "$i"
    elif [[ $option == 2 ]]
    then
      tar -czf "$i.tar.gz" "$i" && rm -vrf "$i"
    elif [[ $option == 3 ]]
    then
      tar -czf "$i.tar.bz2" "$i" && rm -vrf "$i"
    elif [[ $option == 4 ]]
    then
      tar -czf "$i.tar.tbz" "$i" && rm -vrf "$i"
    elif [[ $option == 5 ]]
    then
      tar -czf "$i.tar.tb2" "$i" && rm -vrf "$i"
    else
      tar -Jcf "$i.tar.xz" "$i" && rm -vrf "$i"
    fi
    
    echo "End $(date +"%H:%M:%S - %d/%m/%Y")"
  fi
done
