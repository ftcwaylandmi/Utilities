#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;
cd FtcRobotController-$VERSION-$1/$2
echo "Enter Commit MSG: "
read commitMSG
git commit -a -m "$commitMSG"
git push origin master
cd $CURRHOMEPATH;
