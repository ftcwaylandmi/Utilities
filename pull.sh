#!/bin/bash

VERSIONTAG=6.2;

git pull
CURRHOMEPATH= `pwd`;
cd
cd FtcRobotCode-`date +%Y`
for i in A B C; do
        cd ~/FtcRobotCode-`date +%Y`/FtcRobotController-$VERSIONTAG-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
        git pull
	echo "Pulled Repo $i"
        cd $CURRHOMEPATH;
done
echo "Pull Complete"
