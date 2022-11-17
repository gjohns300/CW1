#!/bin/bash
#--------UNIT TEST 1----------
#setting java value to testInput1 to be tested
testInput=$"1 Pounds"
testOutput=$(java CurrencyConverter $testInput)

#checking if testInput is empty
if [ -z "$testInput" ];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi

#--------UNIT TEST 2---------
#checking if testInput contains capital letters
if [[ "$testInput" =~ [A-Z] ]];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi




#--------UNIT TEST 3---------
#checking if testInput contains capital letters
expectdOutput1=$"1.0 Pounds = 2.36 Dollars"
if [[ "$testOutput" = "expectedOutput" ]];
#test failed display message
then    echo "Test Failed"
exit 1
#test passed message
else    echo "Test Passed"
fi



