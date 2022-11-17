#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to testInput1 to be tested
input=$"20 euros"
actualOutput=$(java CurrencyConverter $input)

failCount=0

#checking if input is empty
if [ -z "$input" ];
#test failed display message
then    echo "No input detected. Please input your amount and then currency"
exit 0
#test passed message
else    echo "Test Passed"
fi

inputLastChar=${input: -1}
if [[ $inputLastChar =~ [0-9] ]];
then	echo "Incorrect format of input. Please enter amount of currency before type"
else 	echo "Test Passed"
fi

#--------UNIT TEST 2---------

input=$"50 DOLLARS"
actualOutput=$(java CurrencyConverter $input)

#checking if testInput contains capital letters
if [[ "$input" =~ [A-Z] ]];
#test failed display message
then    echo "Test Failed"
#test passed message
else    echo "Test Passed"
fi


#--------UNIT TEST 3---------
#checking if input contains capital letters
expectedOutcome1="1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

input=$"1 dollars"
actualOutput=$(java CurrencyConverter $input)


if [[ "$actualOutput" == "$expectedOutcome1" ]];
#test passed message
then    echo "Test Passed"
else    echo "Test Failed"
fi

input=$"1 pounds"
actualOutput=$(java CurrencyConverter $input)


expectedOutcome2="1.0 Pounds = 1.36 Dollars
1.0 Pounds = 1.19 Euros
Thank you for using the converter."

if [[ "$actualOutput" == "$expectedOutcome2" ]];
#test passed message
then    echo "Test Passed"
else	echo "Test Failed"
fi

input=$"1 euros"
actualOutput=$(java CurrencyConverter $input)

expectedOutcome3="1 Euros = 1.19 Dollars
1.0 Euros = 0.84 Pounds
Thank you for using the converter."

if [[ "$actualOutput" == "$expectedOutcome3" ]];
#test passed message
then    echo "Test Passed"
else    echo "Test Failed" 
fi


