#!/bin/bash

echo "Year:"
read YEAR

echo "Version:"
read VERSION

echo "Repository:"
read REPO

cd
if [ ! -d FtcRobotCode-$YEAR-$VERSION ]
then
	mkdir -p FtcRobotCode-$YEAR-$VERSION
fi
cd FtcRobotCode-$YEAR-$VERSION
curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip
unzip FtcRobotController-$VERSION

CURRHOMEPATH=`pwd`;

cp -r FtcRobotController-$VERSION FtcRobotController-$VERSION-$REPO
cd FtcRobotController-$VERSION-$REPO/TeamCode/src/main/java/org/firstinspires/ftc/
rm -rf teamcode
git clone https://github.com/ftcwaylandmi/$REPO.git teamcode

cd $CURRHOMEPATH;

rm -rf FtcRobotController-$VERSION
rm -rf FtcRobotController-$VERSION.zip
