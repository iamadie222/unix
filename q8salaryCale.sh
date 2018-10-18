echo -n "Enter Basic Salary: "
read basic

echo "Choose what to find: "
echo "a. for Dearness allowance"
echo "b. for Provident Func"
echo "c. for Hourse Rent"
echo "d. for Income Tax deducted"
echo "e. for Take Home Salary"
#read opt

da="$((( $basic *  90 ) / 100 ))"
pf="$((( $basic *  12 ) / 100 ))"
hra="$(((( $basic *  20 ) / 100 ) + $da))"
it="$((( (($basic + $da) + $hra ) *  5 ) / 100 ))"
ths=`expr $basic + $da + $hra - $it`
read opt
case $opt in
	a)
		echo $da
		;;
	b)
		echo $pf
		;;
	c)
		echo $hra
		;;
	d)
		echo $it
		;;
	e)
		echo $ths
		;;
	*)
		echo "No valid Option Selected"

esac
