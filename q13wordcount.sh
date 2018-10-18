
echo -n "Enter File Name: "
read FILE
if [ ! -f $FILE ]
then
	echo "File $FILE do not exist."
	exit
fi
CHARS=0
WORDS=0
LINES=0
while read ln
do
	for w in $ln
	do
		clen=$(expr length $w)
		CHARS=$(expr $CHARS + 1 + $clen)
		WORDS=$(expr $WORDS + 1)
	done

	LINES=$(expr $LINES + 1)
done < $FILE

echo "Total Characters: $CHARS"
echo "Total Words: $WORDS"
echo "Total Lines: $LINES"
