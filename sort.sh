#!/bin/bash -x
read -p "enter the value of a" a;
read -p "enter the value of b" b;
read -p "enter the value of c" c;
declare -A expression
expression[One]=$(echo "scale=2; $a+$b*$c" | bc)
expression[Two]=$(echo "scale=2; $a*$b+$c" | bc)
expression[Three]=$(echo "scale=2; $c+$a/$b" | bc)
expression[Four]=$(echo "scale=2; $a%$b+$c" | bc)
array[0]=${expression[One]}
array[1]=${expression[Two]}
array[2]=${expression[Three]}
array[3]=${expression[Four]}
echo ${!expression[@]}
echo ${expression[@]}
echo ${!array[@]}
echo ${array[@]}
for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[$j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done 
echo ${array[*]}
