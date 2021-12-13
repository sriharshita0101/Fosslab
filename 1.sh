ch=1
while [ $ch -eq 1 ]
do
echo "enter 2 numbers"
read n1 n2
echo "1-addition\n2-subtraction\n3-multiplication\n4-division"
echo "enter a option"
read op
case $op in
	1) res=`expr $n1 + $n2`
	echo "sum of $n1 and $n2 is $res"
	;;
	2) res=`expr $n1 -$n2`
	echo "difference of $n1 and $n2 is $res"
	;;
	3) res=`expr $n1 \* $n2`
	echo "product of $n1 and $n2 is $res"
	;;
	4) res=`expr $n1 / $n2`
	echo "division of $n1 and $n2 is $res"
	;;
	5) res=`expr $n1 % $n2`
	echo "modulus of $n1 and $n2 is $res"
	;;
	*) echo "enter valid option 1-5"
	;;
esac
echo "enter choice to repeat \n 1-yes \n
anyother value-no"
read ch
done
	
