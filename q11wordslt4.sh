FL="f1.txt"
CNT=`cat $FL`
for i in $CNT
do
	if [ "$(expr length "$i")" -lt 4 ]
	then
		echo $i
	fi

done

