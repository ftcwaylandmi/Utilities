#!/bin/bash

echo "Year:"
read YEAR

echo "Version:"
read VERSION

echo "Repository Name:"
read REPONAME

cd
if [ ! -d FtcRobotCode-$YEAR-$VERSION ]
then
	mkdir -p FtcRobotCode-$YEAR-$VERSION

	cd FtcRobotCode-$YEAR-$VERSION
	curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip
	unzip FtcRobotController-$VERSION

	cp -r FtcRobotController-$VERSION FtcRobotController-$REPONAME
	cd FtcRobotController-$REPONAME/TeamCode/src/main/java/org/firstinspires/ftc/
	rm -rf teamcode
	git clone https://github.com/ftcwaylandmi/$REPONAME.git teamcode



	rm -rf FtcRobotController-$VERSION
	rm -rf FtcRobotController-$VERSION.zip
else
	echo "Repository for this version has already been created. Attempting to pull down year and version from github"

	cd FtcRobotCode-$YEAR-$VERSION/FtcRobotController-$REPONAME/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
	git pull
	cd $CURRHOMEPATH
fi
