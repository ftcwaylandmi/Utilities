#!/bin/bash

VERSION=`cat Version.txt`
CURRHOMEPATH=`pwd`;
git pull
echo "Pulled Utilites Repo"

for i in a b c phones; do
	cd
	cd ~/FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
	git pull
	echo "Pulled $i Repo"
	cd $CURRHOMEPATH;
done
