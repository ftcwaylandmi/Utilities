#!/bin/bash

VERSIONTAG=8.0;

UTIL="-u"
REPO="-r"

# if [ -z $1]
if [ $1 == $UTIL ] 
then
	echo "Pushing Utilities"
	git commit -a -m "Utilities Pushed: `date +%m-%d-%Y-%M`"
    git push origin master
fi
if [ $1 == $REPO ]
then
CURRHOMEPATH=`pwd`;
cd
cd FtcRobotCode-`date +%Y`-$VERSIONTAG

cd ~/FtcRobotCode-`date +%Y`-$VERSIONTAG/FtcRobotController-$VERSIONTAG-$2/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/

echo "Commit Msg: "
read commitMsg
git commit -a -m "$commitMsg"
git push origin main
cd $CURRHOMEPATH;

echo "Pulled Repo $2"
fi