function prime()
{
	for((i=2 ; i<=$1/2 ; i++))
	do
		isprime=1			#is a prime
		if(($1%$i==0))
		then
			isprime=0		#not a prime number
			break
		fi
	done

		if((isprime==1))
		then
			echo "$num1 is a prime num"
		else
			echo "$num1 is not a prime num"
		fi
}


function reverse()
{
number=$1
num=$number
reverse=0
while(($number > 0))
do
                remainder_newNum=$(($number % 10))
                number=$(($number / 10))
                reverse=$(($reverse * 10 + $remainder_newNum))
done

        echo "reverse= $reverse"
}

function check()
{
        if(($num==$reverse))
        then
                echo "$reverse is palindrome"
        else
                echo "$reverse is not palindrome"
        fi
}

read -p "enter the positive num:" num1

prime $num1
reverseNumber= reverse $num1
check $reverseNumber
