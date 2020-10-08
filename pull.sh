#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;
cd Utilities/
git pull

for i in a b c phones; do
	cd ~/FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
	git pull
	cd $CURRHOMEPATH;
done
