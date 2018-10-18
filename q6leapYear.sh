echo -n "Enter Year: "
read YEAR

if test $YEAR -lt 0
then
	echo "Year Must Be Positive Integer"
else
	if test $(expr $YEAR % 4) -eq 0
	then
		echo "It is Leap Year"
	else
		echo "It is Not Leap Year"
	fi
fi

