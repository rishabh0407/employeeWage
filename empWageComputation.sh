#!/bin/bash -x

random=$(( RANDOM % 2 ))
ispresent=0;
wagePerHour=20;
hoursWorked=8;
if(( $random == $ispresent ));
then 
     salary=$(( $wagePerHour * $hoursWorked ));
     echo "Present"
     echo  "Salary=" $salary
else
     echo "Absent"
     echo "Salary=0"
fi
