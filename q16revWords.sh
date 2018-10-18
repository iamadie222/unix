
echo -n "Enter File Name: "
read FILE
if [ ! -f $FILE ]
then
	echo "File $FILE do not exist."
	exit
fi
while read ln
do
	for w in $ln
	do
		REV=$(echo "$w" | rev)
		echo -n "$REV "
	done
	echo ""
done < $FILE
