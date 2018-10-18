FILE="11.txt"
while read ln
do
	WD=`expr substr "$ln" 1 4`
	UN=`echo $WD | tr [:A-Z] [:a-z]`
	if [ $UN = "unix" ]
	then
		echo $ln
	fi

done < $FILE
