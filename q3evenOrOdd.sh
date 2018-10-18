echo  -n "Enter Number: "
read NUM

if test $NUM -eq 0
then
	echo "Number is Zero"
	exit
fi
M=`expr $NUM % 2`

if test $M -eq 0
then
	echo "Number is Even"
else
	echo "Number is Odd"
fi

