#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for Random Wallpaper ( CTRL ALT W)

wallDIR="$HOME/Pictures/wallpapers"
scriptsDir="$HOME/.config/hypr/scripts"

PICS=($(find "${wallDIR}/abstract" && find "${wallDIR}/view" && find "${wallDIR}/anime" || grep png || grep jpg ))
RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}


# Transition config
FPS=60
TYPE="wipe"
DURATION=1
BEZIER=".43,1.19,1,.4"
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION"


swww query || swww init && swww img ${RANDOMPICS} $SWWW_PARAMS


${scriptsDir}/PywalSwww.sh
sleep 1
${scriptsDir}/Refresh.sh 

