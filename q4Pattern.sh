NUM=5
I=0
while test $I -le $NUM
do
	J=0
	while test $J -le $I
	do
		echo -n "* "
		J=`expr $J + 1`
	done
	I=`expr $I + 1`
	echo ""
done
