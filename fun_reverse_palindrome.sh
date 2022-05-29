read -p "enter palindrome num:" num1
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

reverseNumber= reverse $num1
check reverseNumber
