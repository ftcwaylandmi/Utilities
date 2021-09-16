#!/bin/bash

cd
if [ ! -d FtcRobotCode-`date +%Y` ]
then
	mkdir -p FtcRobotCode-`date +%Y`
fi

VERSIONTAG=6.2;
cd FtcRobotCode-`date +%Y`
curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSIONTAG.zip >FtcRobotController-$VERSIONTAG.zip
unzip FtcRobotController-$VERSIONTAG

for i in a b c; do
	cp -r FtcRobotController-$VERSIONTAG FtcRobotController-$VERSIONTAG-$i
	cd FtcRobotController-$VERSIONTAG-$i/TeamCode/src/main/java/org/firstinspires/ftc/
	rm -rf teamcode
	git clone https://github.com/ftcwaylandmi/$YEAR-$i.git teamcode
	cd
done
rm -rf FtcRobotController-$VERSION
rm -rf FtcRobotController-$VERSION.zip
