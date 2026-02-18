#!bin/bash

# read command line input
read -p 'Enter ur name: ' $name
if [[ $# < 1 ]]; then
        echo 'pass input'
        exit
fi

# echo
name=$1    # argument as a data
echo "$name, is my name"
echo "Hello bash"

# command execution
cmd=$(ls -lart) && echo $cmd

# variable
name='Kavya'; age=26
echo "my name is $name, and age is $age"
echo "The path is $PATH, shell is $SHELL"

# Function
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


