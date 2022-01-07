#! /bin/bash -x
MAXCOUNT=9
count=0

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$(($RANDOM % 899 + 100))
 let "count += 1"
done

echo "${number[*]}"
n=10
echo "Original array is: ${number[*]}";

flag=1;
for (( i = 0; i < $n-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $n-1-$i; j++ ))
    do
        if [[ ${number[$j]} -gt ${number[$j+1]} ]]
        then
            temp=${number[$j]};
            number[$j]=${number[$j+1]};
            number[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo ${number[*]}
echo " The Second Largest Number is : " ${number[8]}
echo " The Second Smallest number is : " ${number[1]}

