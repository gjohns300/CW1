#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to testInput1 to be tested
input=$"20 euros"
actualOutput=$(java CurrencyConverter $input)


#checking if input is empty
if [ -z "$input" ];
#test failed display message
then    echo "No input detected. Please input your amount and then currency"
exit 0
#test passed message
else    echo "Test Passed"
fi

#checking is last character is a number. If it is test fails due to wrong formatting
inputLastChar=${input: -1}
if [[ $inputLastChar =~ [0-9] ]];
then	echo "Incorrect format of input. Please enter amount of currency before type"
#test passed message
else 	echo "Test Passed"
fi

#--------UNIT TEST 2---------

input=$"50 DOLLARS"
actualOutput=$(java CurrencyConverter $input)

echo $actualOutput

#checking if testInput contains capital letters
if [[ "$input" =~ [A-Z] ]];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi


#--------UNIT TEST 3---------
#checking if dollar conversion works
expectedOutcome1="1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

input=$"1 dollars"
actualOutput=$(java CurrencyConverter $input)


if [[ "$actualOutput" == "$expectedOutcome1" ]];
#test passed message
then    echo "Test Passed"
#test failed message
else    echo "Test Failed"
fi

input=$"1 pounds"
actualOutput=$(java CurrencyConverter $input)

#checking pounds conversion works
expectedOutcome2="1.0 Pounds = 1.36 Dollars
1.0 Pounds = 1.19 Euros
Thank you for using the converter."

if [[ "$actualOutput" == "$expectedOutcome2" ]];
#test passed message
then    echo "Test Passed"
#test failed message
else	echo "Test Failed"
fi

input=$"1 euros"
actualOutput=$(java CurrencyConverter $input)

expectedOutcome3="1 Euros = 1.19 Dollars
1.0 Euros = 0.84 Pounds
Thank you for using the converter."

#checking euros conversion works
if [[ "$actualOutput" == "$expectedOutcome3" ]];
#test passed message
then    echo "Test Passed"
#test failed message
else    echo "Test Failed" 
fi


