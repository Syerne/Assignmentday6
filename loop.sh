echo "welcome"


#prints a table of the powers of 2 that are less than or equal to 2^n.

read -p "enter power: " p
num=1
for((i=1 ; i<=$p ; i++))
do
	num=$(( 2*num ))
	echo $num
done
