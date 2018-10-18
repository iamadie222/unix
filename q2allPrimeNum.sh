echo -n "Enter Minimum Number: "
read MIN
echo -n "Enter Maximum Number: "
read MAX
J=$MIN
while [ $J -lt $MAX ] 
do
	I=2
	FLAG=0
	while [ $I -le $(expr $J / 2) ] 
	do
		if [ $(expr $J % $I) -eq 0 ]	
		then
			FLAG=1
			break;
		fi
		I=$(expr $I + 1)
	done
	if [ $FLAG -eq 0 ]
	then
		echo $J
	fi
	J=$(expr $J + 1)
done



