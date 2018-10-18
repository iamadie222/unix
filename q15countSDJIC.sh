echo -n "Enter File Name: "
read FILE
if [ ! -f $FILE ]
then
	echo "File $FILE do not exist."
	exit
fi

echo $(grep -c "SDJIC" $FILE )
