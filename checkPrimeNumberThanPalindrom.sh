#!/bin/bash -x
function isPalindrome() {
	value1=$1
	duplicate=$value1
	reverse=0
	while(( $value1>0))
	do
		temp=$((value1%10))
		reverse=$((reverse*10+temp))
		value1=$((value1/10))
	done
	echo $reverse

}

function isPrime() {
	number=$1
	flag=0
	if(($number==1))
	then
        	flag=1
	fi
	for((iter=2; iter<=$((number/2)); iter++))
	do
        	if(($((number%iter))==0))
        	then
                	flag=1
        	fi
	done
	if(($flag==0))
	then
        	echo "$number"
	else
        	echo "Not Prime Number"
	fi

}
echo "Enter a Number"
read value1
checkPrime="$( isPrime $value1 )" 
if(($checkPrime==$value1))
then
	echo "$checkPrime is Prime Number"
	checkPalindrome="$( isPalindrome $checkPrime )"
	echo "$checkPalindrome is its Palindrome"
	result="$( isPrime $checkPalindrome )" 
	if(($result==$checkPalindrome))
	then
		echo "$result is also Prime" 
	else
		echo $result
	fi
else
	echo $checkPrime
fi
