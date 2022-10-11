#!/bin/bash

# SAVED_DATA
VERSION=$(cat "files/Version.txt")
# echo "$VERSION"

# FLAGS $1
START="-start"
PUSH="-push"
PULL="-pull"
INFO="-info"
UPDATE="-update"

# FLAGS $2
UTIL="-u" # Pulls or Pushes Utils
REPO="-r" # Pulls or Pushes Repo
VUPDATE="-v" # Updates Version

# FLAGS $3
#  - Repo Name (Example: Utilities)
#  - Data Name (Example: VERSION=8.0)

case $2 in

    $UTIL)
        case $1 in 
            $PUSH)
                echo "Pushing Utilities"
	            git commit -a -m "Utilities Pushed: `date +%m-%d-%Y-%M`"
                git push origin master
            ;;

            $PULL)
                echo "Pulling Utilities"
	            git pull
            ;;

            *) # Blank or Not a Flag
                echo "[UTILITIES] {arg[1] error} : Blank, not a valid flag, or not a valid flag for arg[2]."
                exit
            ;;
        esac
    ;;

    $REPO)
      case $1 in 

            $START)
                cd
                if [ ! -d FtcRobotCode ]
                then
                    mkdir -p FtcRobotCode
                fi
                cd FtcRobotCode
                curl -L https://github.com/FIRST-Tech-Challenge/FtcRobotController/archive/v$VERSION.zip >FtcRobotController-$VERSION.zip
                unzip FtcRobotController-$VERSION

                CURRHOMEPATH=`pwd`;

                cp -r FtcRobotController-$VERSION FtcRobotController-$VERSION-$3
                cd FtcRobotController-$VERSION-$3/TeamCode/src/main/java/org/firstinspires/ftc/
                rm -rf teamcode
                git clone https://github.com/ftcwaylandmi/$3.git teamcode

                cd $CURRHOMEPATH;

                rm -rf FtcRobotController-$VERSION
                rm -rf FtcRobotController-$VERSION.zip
                echo "Starting Repo: $3 on Version: $VERSION"
            ;;
            
            $PUSH)
                CURRHOMEPATH=`pwd`;
                cd
                cd FtcRobotCode

                cd ~/FtcRobotCode/FtcRobotController-$VERSION-$3/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/

                echo "Commit Message: "
                read COMMITMESSAGE
                git commit -a -m "$COMMITMESSAGE"
                git push origin main
                cd $CURRHOMEPATH;
                echo "Pushed Repo $3"
            ;;

            $PULL)
                cd

                cd ~/FtcRobotCode/FtcRobotController-$VERSION-$3/TeamCode/src/main/java/org/firstinspires/ftc/teamcode/
                git pull

                echo "Pulled Repo $3"
            ;;

            *) # Blank or Not a Flag
                echo "[UTILITIES] {arg[1] error} : Blank, not a valid flag, or not a valid flag for arg[2]."
                exit
            ;;
        esac  
    ;;

    $VUPDATE)
        case $1 in

            $UPDATE)
                echo $3 > files/Version.txt
            ;;

            $INFO)
                cat files/Version.txt
            ;;

            *)
                echo "[UTILITIES] {arg[1] error} : Blank, not a valid flag, or not a valid flag for arg[2]."
                exit
            ;;

        esac
    ;;

    *) # Blank or Not a Flag

        case $1 in

            $INFO)
                echo "[UTILITIES] Info"
            ;;

            *)
                echo "[UTILITIES] {arg[2] error} : Blank or not a valid flag."
                exit
            ;;

        esac
    ;;

esac

# case $2