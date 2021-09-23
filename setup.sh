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

CURRHOMEPATH=`pwd`;
for i in A B C; do
	cp -r FtcRobotController-$VERSIONTAG FtcRobotController-$VERSIONTAG-$i
	cd FtcRobotController-$VERSIONTAG-$i/TeamCode/src/main/java/org/firstinspires/ftc/
	rm -rf teamcode
	git clone https://github.com/ftcwaylandmi/`date +%Y`-$i.git teamcode
	cd $CURRHOMEPATH;
done

rm -rf FtcRobotController-$VERSIONTAG
rm -rf FtcRobotController-$VERSIONTAG.zip
