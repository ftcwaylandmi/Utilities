#!/bin/bash

VERSION=6.0
CURRHOMEPATH=`pwd`;
for i in a b c phones; do
	cd ~/FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
	git pull
	cd $CURRHOMEPATH;
done
