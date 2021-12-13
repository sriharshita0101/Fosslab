echo "enter two numbers"
read a b
echo "enter option"
read op
case $op in 
	1)res`expr $a + $b`
	;;
	2)res`expr $a - $b`
	;;
	3)res`expr $a * $b`
	;;
	4)res`expr $a / $b`
	;;
*)
echo "enter valid option"
esac
echo "$res of two numbers"
