#!/bin/bash
#read -p 'Enter ur name: ' $name
if [[ $# < 1 ]]; then
	echo 'pass input'
	exit
fi

name=$1
echo "$name, is my name"
echo "Hello bash"


cmd=$(ls -lart) && echo $cmd

name='Kavya'; age=26
echo "my name is $name, and age is $age"

echo "The path is $PATH, shell is $SHELL"

func(){
local age=26
echo "Name is $name, age is $age"
}
func

#concatenation
greeting='hello'
name=$1
echo $greeting $name

#Aritmatic
num1=34; num2=56
add=$((num1 + num2))
echo "The sum of $num1 and $num2 is $add"
sub=$((num1 - num2))
echo "The difference of $num1 and $num2 is $sub"
mul=$((num1 * num2))
echo "The product of $num1 and $num2 is $mul"
div=$((num1 / num2))
echo "The division of $num1 and $num2 is $div"


#array
fruits=("apple", "banana", "cherry")
for fruit in ${fruits[@]}; do
	echo $fruit
done
declare -A colors
colors[Tree]="Green"
colors[Water]="Blue"
colors[laptop]="Black"
echo ${colors[Tree]}
echo ${colors[Water]}
echo ${colors[laptop]}
unset ${colors[laptop]}
for item in ${colors[@]}; do
	echo $item
done


#Basic If statement
num=15
if [[ $num -gt 18 && $num -lt 60 ]]; then
	echo 'Eligible for voting.'
elif [[ $num -lt 18 ]]; then
	echo 'Not eligible for voting'
else
	echo 'You are retired'
fi

# for loop
for i in {1..15}; do
	echo $i
done

for i in {1..15}; do
	if [[ $i%2 -eq 0 ]]; then
		echo "even numbers $i"
	fi
done

for i in {1..15..2}; do
	echo "odd numbers $i"
done
