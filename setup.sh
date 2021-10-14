#!/bin/bash

echo "Year:"
read YEAR

echo "Version:"
read VERSION

cd /c/Users/MSRobotics12
if [ ! -d FtcRobotCode-$YEAR-$VERSION ]
then
	mkdir -p FtcRobotCode-$YEAR-$VERSION

	cd /c/Users/MSRobotics12/FtcRobotCode-$YEAR-$VERSION
	curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip
	unzip FtcRobotController-$VERSION

	CURRHOMEPATH=`pwd`;
	for i in A B C D; do
		cp -r FtcRobotController-$VERSION FtcRobotController-$VERSION-$i
		cd FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/
		rm -rf teamcode
		git clone https://github.com/ftcwaylandmi/$YEAR-$i.git teamcode
		cd $CURRHOMEPATH;
	done

	rm -rf FtcRobotController-$VERSION
	rm -rf FtcRobotController-$VERSION.zip
else
	echo "Files for Version:$VERSION, and Year:$YEAR have already been created. Attempting to pull down year and version from github"
	for v in A B C D; do
		cd /c/Users/MSRobotics12/FtcRobotCode-$YEAR-$VERSION/FtcRobotController-$VERSION-$v/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
		git pull
		cd /c/Users/MSRobotics12/FtcRobotCode-$YEAR-$VERSION
	done
fi
