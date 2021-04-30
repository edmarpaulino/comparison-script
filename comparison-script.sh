#! /usr/bin/env bash

# Program variables
higherValue=''
lowerValue=''
i='1'
initialQuantity="$#"

# Checking parameters
if [[ "$#" -eq '0' ]]; then
	echo 'Any parameter defined!'
	echo -e "Enter numbers as parameters so that they are compared and \nthe script returns the smallest and largest among them."
	exit 1
fi

# Making the comparison
while [[ "$i" -le "$initialQuantity" ]]; do
	[[ "i" -eq '1' ]] && lowerValue="$1" && higherValue="$1"
	[[ "$1" -gt "$higherValue" ]] && higherValue="$1"
	[[ "$1" -lt "$lowerValue" ]] && lowerValue="$1"
	let i++	
	shift
done

# Printing the results
echo "The lower value is: $lowerValue"
echo "The higher value is: $higherValue"
echo "Number of numbers reported: $initialQuantity"
exit 0;

# End of the script
