#! /bin/bash

clear
read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter average life expectancy: " ale

if (( age < 18 )); then
	echo "$name You are student"
	let x=18-$age
	echo "At least $x years to become a worker"
elif (( (( age >= 18 )) && (( age < 65 )) )); then
	echo "$name You are worker"
        echo "At least $(( 65 - age )) years to become a retire"
elif (( age >= 65 )); then
        if (( age < ale )); then
		echo "$name you re retired"
		echo "$(( ale - age )) years to die"
	else
		echo $'\a'  # to get a beep sound but it didn't work
		echo "!!!!! Already DIED  !!!!!!"
		
		sleep 2
		echo -ne '\007'  # to get a beep sound but it didn't work
		echo "!!!!! Already DIED  !!!!!!"
		
		sleep 2
		echo -ne '\007'  # to get a beep sound but it didn't work
		echo "!!!!! Already DIED  !!!!!!"
	fi	

fi 
