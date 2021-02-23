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


function calculateWage()
{
workingHours=$1;
wage=$(( workingHours * ratePerhour ));
echo $wage
}


while (( $workingDays<=maxDays && $totalHoursWorked<=$maxHours ))
do
         hoursWorkedfinal="$( hours $(( RANDOM % 3 )) )"
         totalHoursWorked=$(($totalHoursWorked+$hoursWorkedfinal));
         ((workingDays++))
          empDailyWage[$maxDays]="$( calculateWage $hoursWorkedfinal)"
done
monthlySalary="$( calculateWage $maxHours )"
echo "Daily wage ${empDailyWage[@]}"
totalSalary=$(($totalHoursWorked*$workingDays));
echo $totalSalary
