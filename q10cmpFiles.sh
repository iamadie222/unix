echo -n "Enter File1 Name: "
read FILE1
if [ ! -f $FILE1 ]
then
	echo "File $FILE1 do not exist."
	exit
fi

echo -n "Enter File2 Name: "
read FILE2
if [ ! -f $FILE2 ]
then
	echo "File $FILE2 do not exist."
	exit
fi

if cmp --silent $FILE1  $FILE2 
then
	echo "Files $FILE1 and $FILE2 are Identical"
else
	echo "Files $FILE1 and $FILE2 are not Identical"
fi



