echo -n "Enter File Name: "
read FILE
if [ ! -f $FILE ]
then
	echo "File do not exist."
	exit
fi
LSO=`ls -l $FILE`
FP=`expr substr "$LSO" 2 9`
# checking every rwx latters in FP
ur=`expr substr $FP 1 1`
uw=`expr substr $FP 2 1`
ux=`expr substr $FP 3 1`
gr=`expr substr $FP 4 1`
gw=`expr substr $FP 5 1`
gx=`expr substr $FP 6 1`
or=`expr substr $FP 7 1`
ow=`expr substr $FP 8 1`
ox=`expr substr $FP 9 1`

echo "User's permissions: "
	if test $ur != ""-""
	then
		echo  "\tRead"
	fi

	if test $uw != "-"
	then
		echo  "\tWrite"
	fi

	if test $ux != "-"
	then
		echo  "\tExecute"
	fi

echo "Group's permissions: "
	if test $gr != "-"
	then
		echo  "\tRead"
	fi

	if test $gw != "-"
	then
		echo  "\tWrite"
	fi

	if test $gx != "-"
	then
		echo  "\tExecute"
	fi

echo "Other's permissions: "
	if test $or != "-"
	then
		echo  "\tRead"
	fi

	if test $ow != "-"
	then
		echo  "\tWrite"
	fi

	if test $ox != "-"
	then
		echo "\tExecute"
	fi

