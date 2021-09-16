#!/bin/bash

VERSIONTAG=6.2;
CURRHOMEPATH=`pwd`;
cd
cd FtcRobotCode-`date +%Y`
echo "Enter your Repo: "
read REPO

cd ~/FtcRobotCode-`date +%Y`/FtcRobotController-$VERSIONTAG-$REPO/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/

echo "Commit Msg: "
read commitMsg
git commit -a -m "$commitMsg"
git push origin master
cd $CURRHOMEPATH;
