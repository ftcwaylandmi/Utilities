#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;
for i in a b c phones; do
	cd ~/FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
	git pull
	cd $CURRHOMEPATH;
done
