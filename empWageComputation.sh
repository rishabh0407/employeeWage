#!/bin/bash -x

isFulltime=0;
isParttime=1;
randomCheck=$(( $RANDOM % 3 ));
if(( $randomCheck==$isFulltime ))
then
   hoursworked=8;
   rateperhour=100;
   salary=$(( $hoursworked * $rateperhour ))
   echo $salary
elif(( $randomCheck==$isParttime ))
then
   hoursworked=4;
   rateperhour=100;
   salary=$(( $hoursworked * $rateperhour ))
   echo $salary
else
   echo "Absent"
   echo "Salary=0"
fi


