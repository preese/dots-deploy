#!/bin/bash

installed=$(rpm -qa kernel |sort -V |tail -n 1)
current=$(echo "kernel-"$(uname -r))
if [ $installed != $current ] ;
then
   echo " Consider Restarting"
fi
echo "$installed"
echo "$current"
