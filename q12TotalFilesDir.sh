FLS=$(ls -a)
FILES=0
DIRS=0
for i in $FLS
do
	if test -f $i
	then
		FILES=$(expr $FILES + 1)
	elif test -d $i 
	then
		DIRS=$(expr $DIRS + 1)
	fi
done

echo "Total Files: $FILES"
echo "Total Directories: $DIRS"
