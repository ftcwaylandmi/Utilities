#!/bin/bash

VERSIONTAG=7.0;

git pull
CURRHOMEPATH= `pwd`;
cd
for i in A B C D; do
        cd ~/FtcRobotCode-`date +%Y`/FtcRobotController-$VERSIONTAG-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
        git pull
	echo "Pulled Repo $i"
        cd $CURRHOMEPATH;
done
echo "Pull Complete"
