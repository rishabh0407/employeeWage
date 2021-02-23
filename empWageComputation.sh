#!/bin/bash -x

isFulltime=0;
isParttime=1;
ratePerhour=20;
randomCheck=$(( $RANDOM % 3 ));
case $randomCheck in
    $isFulltime)hoursWorked=8
                ;;
    $isParttime)hoursWorked=4
                ;;
    *)hoursWorked=0
                ;;
esac

salary=$(($hoursWorked * $ratePerhour));
