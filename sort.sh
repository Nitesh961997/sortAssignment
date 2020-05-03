#!/bin/bash -x
read -p "enter the value of a" a;
read -p "enter the value of b" b;
read -p "enter the value of c" c;
declare -A expression
expression[One]=$(echo "scale=2; $a+$b*$c" | bc)
expression[Two]=$(echo "scale=2; $a*$b+$c" | bc)
expression[Three]=$(echo "scale=2; $c+$a/$b" | bc)
expression[Four]=$(echo "scale=2; $a%$b+$c" | bc)
echo ${!expression[@]}
echo ${expression[@]}
