#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to input to be tested
echo "-------Unit Test 1------"

actualOutput=$(java CurrencyConverter)
expectedOutput=$"No input detected. Please input your amount and then currency"
#checking if outputs match
if [[ "$actualOutput" == "$expectedOutput" ]];
#user notification display message
#test passed message
then	echo "Checking for empty value - Test Passed"
#test failed message
else    echo "Checking for empty value - Test Failed"
fi

#checking is last character is a number. If it is test fails due to wrong formatting
input=$"dollars 1"
actualOutput=$(java CurrencyConverter $input)
expectedOutput=$"Wrong format entered
1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

echo $actualOutput
if [[ "$actualOutput" == "$expectedOutput" ]];
then	echo "Checking for correct format - Test Passed"
#test passed message
else 	echo "Incorrect format of input. Please enter amount of currency before type"

fi

#--------UNIT TEST 2---------
echo "-------Unit Test 2------"


input=$"1 DOLLARS"
actualOutput=$(java CurrencyConverter $input)
expectedOutput=$"1.0 Dollars = 0.74 Pounds
1.0 Dollars = 0.88 Euros
Thank you for using the converter."

#checking if input contains capital letters
#checking if outputs match
if [[ "$actualOutput" == "$expectedOutput" ]];
#user notification display message
#test passed message
then    echo "Checking for conversion value - Test Passed"
#test failed message
else    echo "Checking for empty value - Test Failed"
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


