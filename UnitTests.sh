#!/bin/bash
#-------UNIT TEST 1----------

echo "--------Unit Test 1------"

#setting input to blank value and passing through CurrencyConverter.java
actualOutput=$(java CurrencyConverter)
expectedOutput=$"No input detected. Please input your amount and then currency"

#checking if outputs match
if [[ "$actualOutput" == "$expectedOutput" ]];
#test passed message
then	echo "Checking for empty value - Test Passed"
#test failed message
else    echo "Checking for empty value - Test Failed"
fi

#setting input to wrong format and passing through CurrencyConverter.java
input=$"dollars 1"
actualOutput=$(java CurrencyConverter $input)
expectedOutput=$"Wrong Format Entered
1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

#checking if outputs match
if [[ "$actualOutput" == "$expectedOutput" ]];
#test passed message
then	echo "Checking for correct format - Test Passed"
#test passed message
else 	echo "Checking for correct format - Test Failed"
fi

#--------UNIT TEST 2---------
echo "-------Unit Test 2------"

#setting input to all caps and passing through CurrencyConverter.java
input=$"1 DOLLARS"
actualOutput=$(java CurrencyConverter $input)
expectedOutput=$"1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

#checking if input contains capital letters
#checking if outputs match
if [[ "$actualOutput" == "$expectedOutput" ]];
#test passed message
then    echo "Checking for capital letters - Test Passed"
#test failed message
else    echo "Checking for capital letters - Test Failed"
fi


#--------UNIT TEST 3---------

echo "-------Unit Test 3------"


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


