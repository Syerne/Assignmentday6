echo "welcome"


#prints a table of the powers of 2 that are less than or equal to 2^n.
read -p "enter power: " p
num=1
for((i=1 ; i<=$p ; i++))
do
	num=$(( 2*num ))
	echo $num
done



#Harmonic Number upto nth form
read -p "enter nth form of number: " num
add=1/1
for((i=2 ; i<=$num ; i++))
do
	add="$add + 1/$i"
done
	echo "Harmonic Number= $add + ..... + 1/n"



#determines the number is a prime.
read -p "enter the positive number: " num
isprime=1
for((i=2 ; i<=$num/2 ; i++))
do
        if((num%i == 0))
        then
                isprime=0
                break
        fi
done
        if((isprime==1))
        then
                echo "$num is a prime num"
        else
                echo "$num is not a prime num"
        fi




#prime number in range of 2 to 100

for((p=2 ; p<=100 ; p ++))
do
        isprime=1
  for((i=2 ; i<=$p/2 ; i++))
  do
        if((p%i == 0))
        then
                isprime=0
                break
        fi
  done
        if((isprime==1))
        then
                echo $p
        fi
done



#factorial of number
read -p "enter the positive number for factorial: " num
factorial=1
for((i=1 ; i<=$num ; i++))
do
	factorial=$(( factorial*i ))
done
	echo $factorial



#prints a table of the powers of 2 to 2^n till 256 is reached..
read -p "Enter value for power: " p
num=1
i=0

while [ $i != $p ]
do
        num=$(( $num * 2 ))
        echo $num
        i=$(( i + 1))
done




#magic number game
user_num=1
random_num=100
while(( user_num != random_num ))
do
	read -p "guess the number witin 1 to 100: " user_num
	random_num=$(( 1 + RANDOM%100 ))

	echo "user gussed num: " $user_num
	echo "random num: " $random_num
done




#flip the coin and count the wins and decide who wins
Head=0
Tail=1
Hcount=0
Tcount=0

while (( Head != Tail ))
do
if(( $((RANDOM % 2)) == 0 ))
then
        Hcount=$(($Hcount + 1))
        echo "HEADS: $Hcount"

        if(($Hcount == 11 ))
        then
                echo "***HEAD WINS***"
                break
        fi
else
        Tcount=$(($Tcount + 1))
        echo "TAILS: $Tcount"

        if [ $Tcount == 11 ]
        then
                echo "***TAIL WINS***"
                break
        fi
fi
done








#gambling game with rs.100 number of times won and number of bets made.

money=100
play_count=0
won_count=0

while(( money!=200 && money!=0  ))
do
        (( play_count++))

        echo "Initial Money: " $money

        bet=$(( RANDOM%2 ))

        if(( bet == 1))
        then
                (( money++ ))
                (( won_count++))
        else
                ((money--))
        fi

        echo "Remaining money: " $money
done

echo "Number of times played: " $play_count
echo "Number of times won: " $won_count
echo "Number of times lost: " $(( play_count - won_count))







#To cnvert from degC to degF
function degF()
{
	if (( $1 >= 0 & $1 <= 100 ))	#limits for degC
	then
		sum=`awk "BEGIN {print ($1 * (9/5)) + 32}"`
		echo "$sum F"
	else
		echo "ERROR"
	fi
}

#To cnvert from degF to degC
function degC()
{
	if (( $1 >= 32 & $1 <= 212 ))	#limits for degF
	then
		sum=`awk "BEGIN {print ($1 - 32) * (5/9)}"`
		echo "$sum C"
	else
		echo "ERROR"
	fi
}

read -p "Enter value: " input 

read -p "Press 1 for degC to degF
Press 2 for degF to degC " unit

case $unit in
	1) degF $input		#calling function
	        ;;
	2) degC $input
	        ;;
	*) echo "You are doing invalid operation."
	        ;;
esac
