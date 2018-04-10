#!/bin/bash
#Menu driven calculator
clear
i="y"
while [ $i = "y" ]
do
	echo "Enter First no:"
	read x
	echo "Enter Second no:"
	read y
	echo ""
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Remainder"
	echo ""
	echo "Enter your choice:"
	read ch
	echo ""
        case $ch in
                1)
                echo "Sum= "$(( $x + $y ));;
                2)
                echo "Difference= "$(( $x - $y ));;
                3)
                echo "Product= "$(( $x * $y ));;
                4)
                echo "Quotient= "$(( $x / $y ));;
		5)
		echo "Remainder= "$(( $x % $y ));;
                *)
                echo "Invalid choice!";;
        esac
echo "Do u want to continue (y/n) ?";
read i
if [ $i != "y" ]
then
	exit
fi
done
