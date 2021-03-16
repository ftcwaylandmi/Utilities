#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;
cd
cd FtcRobotController-$VERSION-$1/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
echo "Commit Msg: "
read commitMsg
git commit -a -m "$commitMsg"
git push origin master
cd $CURRHOMEPATH;
