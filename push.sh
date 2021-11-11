#!/bin/bash

VERSIONTAG=7.0;
CURRHOMEPATH=`pwd`;
cd
cd FtcRobotCode-`date +%Y`-$VERSIONTAG
echo "Enter your Repo: "
read REPO

cd ~/FtcRobotCode-`date +%Y`-$VERSIONTAG/FtcRobotController-$VERSIONTAG-$REPO/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/

echo "Commit Msg: "
read commitMsg
git commit -a -m "$commitMsg"
git push origin main
cd $CURRHOMEPATH;
