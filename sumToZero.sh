#! /bin/bash -x
array[0]=-1
array[1]=3
array[2]=-2
array[3]=6
array[4]=5
echo ${array[@]}
len=$((${#array[@]}))
echo $len
for ((i=0;i<$len;i++))
do
    first=$((${array[i]}))
    for ((j=$(($i+1));j<$len;j++))
    do
        second=$((${array[j]}))
        for ((k=$(($j+1));k<$len;k++))
        do
            third=$((${array[k]}))
            sum=$(($first+$second+$third))
            if [ $sum -eq 0 ]
            then
                echo "sum of " $first $second $third "is equal to Zero. "
            fi
        done
    done
done
