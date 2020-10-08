#!/bin/bash

VERSION=6.0
curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip

unzip FtcRobotController-$VERSION
CURRHOMEPATH=`pwd`;
for i in a b c phones; do
	cp -r FtcRobotController-$VERSION FtcRobotController-$VERSION-$i
	cd FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/
	rm -rf teamcode
	git clone https://github.com/ftcwaylandmi/2020-$i.git teamcode
	cd $CURRHOMEPATH;
done
