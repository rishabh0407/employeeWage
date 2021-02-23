#!/bin/bash -x

random=$(( RANDOM % 2 ))
ispresent=0;
if(( $random == $ispresent ));
then 
     echo "Present"
else
     echo "Absent"
fi
