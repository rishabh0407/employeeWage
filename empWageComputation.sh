#!/bin/bash -x

isFulltime=0;
isParttime=1;
ratePerhour=20;
workingDays=1;
maxDays=20;
while (( $workingDays<=maxDays ))
do
    employeeCheck=$(($RANDOM%3));
      case $employeeCheck in
         $isFulltime)
                hoursWorked=8
                ;;
         $isParttime)
                hoursWorked=4
                ;;
         *)
                hoursWorked=0
                ;;
esac

salary=$(($hoursWorked * $ratePerhour));
monthlySalary=$(($totalSalary+$salary));
((workingDays++));
done

echo $monthlySalary
