#!/bin/bash -x
read -p "enter the value of a" a;
read -p "enter the value of b" b;
read -p "enter the value of c" c;
expressionOne=$(echo "scale=2; $a+$b*$c" | bc)
expressionTwo=$(echo "scale=2; $a*$b+$c" | bc)
expressionThree=$(echo "scale=2; $c+$a/$b" | bc)
expressionFour=$(echo "scale=2; $a%$b+$c" | bc)
