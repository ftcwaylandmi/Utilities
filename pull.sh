#!/bin/bash

VERSIONTAG=8.0;

UTIL="-u"
REPO="-r"

# if [ -z $1]
if [ $1 == $UTIL ] 
then
	echo "Pulling Utilities"
	git pull
fi
if [ $1 == $REPO ]
then
cd

cd ~/FtcRobotCode-`date +%Y`-$VERSIONTAG/FtcRobotController-$VERSIONTAG-$2/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
git pull

echo "Pulled Repo $2"
fi