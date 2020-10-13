#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;

cd FtcRobotController-$VERSION-$1/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
echo "Enter Commit MSG: "
read commitMSG
git commit -a -m "$commitMSG"
git push origin master
cd $CURRHOMEPATH;
