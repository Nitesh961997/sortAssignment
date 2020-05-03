#!/bin/bash -x
read -p "enter the value of a" a;
read -p "enter the value of b" b;
read -p "enter the value of c" c;
expresionOne=$(echo "scale=2; $a+$b*$c" | bc)
