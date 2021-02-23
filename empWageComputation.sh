#!/bin/bash -x

#Constants
isFulltime=0;
isParttime=1;
ratePerhour=20;
workingDays=1;
maxDays=20;
maxHours=100;

#Variables
totalHours=0;
workingDays=0;
totalHoursWorked=0;

declare -A empDailyWage
function hours()
{
case $1 in
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
        echo $hoursWorked

}

while (( $workingDays<=maxDays && $totalHoursWorked<=$maxHours ))
do
         hoursWorkedFinal="$( hours $(( RANDOM % 3 )) )"
         totalHoursWorked=$(($totalHoursWorked+$hoursWorkedFinal));
         salary=$(($hoursWorkedFinal * $ratePerhour));
         monthlySalary=$(($monthlySalary+$salary));
         ((workingDays++));
done
echo "Monthly Salary=" $monthlySalary
