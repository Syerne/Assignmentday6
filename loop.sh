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

