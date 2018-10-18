echo -n "Enter Number: "
read NUM
SUM=0
until test $NUM -eq 0
do
	RES=`expr $NUM % 10`
	SUM=`expr $SUM + $RES`
	NUM=`expr $NUM / 10`
done

echo "SUM : $SUM"
