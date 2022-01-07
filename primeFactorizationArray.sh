#! /bin/bash -x
read -p " Enter a number : " num
mid=$(($num/2 +1))
echo $mid
count=1
for((i=2;i<=$mid;i++))
do
	if [ `expr $num % $i` -eq 0 ]
	then
		factor=$(($i))
		j=2
		f=0
		while test $j -le `expr $factor / 2`
		do
			if test `expr $factor % $j` -eq 0
			then
				f=1
			fi
			j=`expr $j + 1`
		done
		if test $f -eq 1
		then
			echo "Not Prime"
		else
			echo "Prime"
			number[count]=$(($factor))
			((count++))
		fi
	fi
done
echo ${number[@]}
