#!/bin/bash

CURRHOMEPATH=`pwd`;
echo "Enter Commit MSG: "
read commitMSG
git commit -a -m  "$commitMSG"
git push origin master 
cd $CURRHOMEPATH;
