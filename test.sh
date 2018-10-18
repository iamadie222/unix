FL=$(ls q*)
for F in $FL
do
	echo "\n---------------------------\n$F\n\n" >> "output.sh"
	cat $F >> "output.sh"
done

