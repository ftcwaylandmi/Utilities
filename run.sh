#!/bin/bash

VERSION=$1
echo $1 > Version.txt
cd
curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip
start https://github.com/ftcwaylandmi?tab=repositories
echo "Opening ftcwaylandmi at github.com"
unzip FtcRobotController-$VERSION
CURRHOMEPATH=`pwd`;
for i in a b c phones; do
	cd
	cp -r FtcRobotController-$VERSION FtcRobotController-$VERSION-$i
	cd FtcRobotController-$VERSION-$i/TeamCode/src/main/java/org/firstinspires/ftc/
	rm -rf teamcode
	git clone https://github.com/ftcwaylandmi/2020-$i.git teamcode
	cd $CURRHOMEPATH;
done
cd
cd Utilities/
echo "Opening README.md File"
start README.md
