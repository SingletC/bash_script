#!/bin/bash
# This code will output any broken node on pbs system.
while read -r line                              #while loop to save all node name
do
    node=($line)                                # make it list
    server=${node[0]}                           # get the first string, which is hostname
    echo "$server" >> temp.txt                  # save it to temp.txt file
done < <(qnodes -l up)

for i in $(cat temp.txt)                        # for loop every host in the temp.txt file
do
  ssh -q -o ConnectTimeout=10 $server exit      # try silence connect the node with timemout of 10, can be changed.
  if [ $? == 255 ]                              # if return code is 255 it indicate it cannot be connected.
  then
    echo "Server $server: down"                 # print out the down node name, or do something here
  fi
done
rm temp.txt -y                                  # remove the temp file
