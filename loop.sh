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



