#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to input to be tested
input=$"1 pounds"
#checking if input is empty
if [ -z "$input" ];
#user notification display message
then    echo "No input detected. Please input your amount and then currency"
#test failed message
	echo "Checking for empty value - Test Failed"
#test passed message
else    echo "Checking for empty value - Test Passed"
fi

#checking is last character is a number. If it is test fails due to wrong formatting
inputLastChar=${input: -1}
if [[ $inputLastChar =~ [0-9] ]];
then	echo "Incorrect format of input. Please enter amount of currency before type"
#test passed message
else 	echo "Checking for correct format - Test Passed"
fi

#--------UNIT TEST 2---------

input=$"50 euros"

#checking if input contains capital letters
if [[ "$input" =~ [[:upper:]] ]];
#contains capital yes message
then    echo "Checking for capital letter - Yes"
#contains capital no message
else    echo "Checking for capital letter - No"
fi

input=$"50 POUNDS"

#checking if input contains capital letters
if [[ "$input" =~ [[:upper:]] ]];
#contains capital yes message
then    echo "Checking for capital letter - Yes"
#contains capital no message
else    echo "Checking for capital letter - No"
fi

input=$"50 Dollars"

#checking if input contains capital letters
if [[ "$input" =~ [[:upper:]] ]];
#contains capital yes message
then    echo "Checking for capital letter - Yes"
#contains capital no message
else    echo "Checking for capital letter - No"
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
then    echo "Checking dollar conversion - Test Passed"
#test failed message
else    echo "Checking dollar conversion - Test Failed"
exit 1
fi

input=$"1 pounds"
actualOutput=$(java CurrencyConverter $input)

#checking pounds conversion works
expectedOutcome2="1.0 Pounds = 1.36 Dollars
1.0 Pounds = 1.19 Euros
Thank you for using the converter."

if [[ "$actualOutput" == "$expectedOutcome2" ]];
#test passed message
then    echo "Checking pound conversion - Test Passed"
#test failed message
else	echo "Checking pound conversion - Test Failed"
exit 1
fi

input=$"1 euros"
actualOutput=$(java CurrencyConverter $input)

expectedOutcome3="1.0 Euros = 1.13 Dollars
1.0 Euros = 0.84 Pounds
Thank you for using the converter."

#checking euros conversion works
if [[ "$actualOutput" == "$expectedOutcome3" ]];
#test passed message
then    echo "Checking euro conversion - Test Passed"
#test failed message
else    echo "Checking euro conversion - Test Failed"
exit 1
fi


