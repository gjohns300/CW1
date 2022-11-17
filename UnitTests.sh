#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to testInput1 to be tested
input=$"1 pounds"
actualOutput=$(java CurrencyConverter $testInput)

#checking if testInput is empty
if [ -z "$actualInput" ];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi

#--------UNIT TEST 2---------
#checking if testInput contains capital letters
if [[ "$actualInput" =~ [A-Z] ]];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi




#--------UNIT TEST 3---------
#checking if testInput contains capital letters
expectdOutput=$"1.0 Pounds = 2.36 Dollars 1.0 Pound = 1.19 Euros"
if [[ "$actualOutput" == "expectedOutput" ]];
#test passed message
then    echo "Test Passed"
else	echo "Test Failed"
exit 1
fi



