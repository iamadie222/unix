
---------------------------
q10cmpFiles.sh


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




---------------------------
q11wordslt4.sh


FL="f1.txt"
CNT=`cat $FL`
for i in $CNT
do
	if [ "$(expr length "$i")" -lt 4 ]
	then
		echo $i
	fi

done


---------------------------
q12TotalFilesDir.sh


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

---------------------------
q13wordcount.sh



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

---------------------------
q14UserLogged.sh


echo -n "Enter Username: "
read User
if [ $(whoami) = $User ]
then
	echo "Entered Username is currently logged in"
else
	echo "Entered Username is currently not logged in"
fi


---------------------------
q15countSDJIC.sh


echo -n "Enter File Name: "
read FILE
if [ ! -f $FILE ]
then
	echo "File $FILE do not exist."
	exit
fi

echo $(grep -c "SDJIC" $FILE )

---------------------------
q16revWords.sh



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

---------------------------
q17StartsWithUnix.sh


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

---------------------------
q18Grep.sh


echo "a. Count number of blank lines in file f1.txt"
grep -c "^$" f1.txt
echo "--------------------------------------------------------"
echo "b. print all lines containing sdjic."
grep "sdjic" f1.txt
echo "--------------------------------------------------------"
echo "c. print the lines that starts with sdjic."
grep "^sdjic" f1.txt
echo "--------------------------------------------------------"
echo "d. Search the files in CPROGRAMS directory which has the string 'include'"
grep -l "include" CPROGRAMS/*
echo "--------------------------------------------------------"
echo "e. print lines having exactly 50 characters in file f1.txt"
grep "^.\{50\}$" f1.txt
echo "--------------------------------------------------------"
echo "f. Count number of blank lines in file f1.txt"
grep -c "^$" f1.txt
echo "--------------------------------------------------------"
echo "g. Display lines having atleast one characters in file f1.txt"
grep "." f1.txt
echo "--------------------------------------------------------"
echo "h. Display lines having sdjic text in any case in file f1.txt"
grep -i "sdjic" f1.txt
echo "--------------------------------------------------------"
echo "i. Display line of file f1.txt having exactly 3 characters"
grep "^...$" f1.txt
echo "--------------------------------------------------------"
echo "j. Display lines of file f1.txt which begin with any alphabet"
grep "^[a-zA-Z]" f1.txt
echo "--------------------------------------------------------"
echo "k. Display lines whose last word is “UNIX” in file f1.txt"
grep "UNIX$" f1.txt
echo "--------------------------------------------------------"
echo "l. Display filenames having last character as digit [0-9]"
grep "[0-9]$" f1.txt 
echo "--------------------------------------------------------"
echo "m. Display list of filenames that only consist digits"
grep -r -l "^[0-9]\{1,\}$" *
echo "--------------------------------------------------------"
echo "n. Display line of file f1.txt which only consist digits"
grep "^[0-9]\{1,\}$" f1.txt
echo "--------------------------------------------------------"
echo "o. Display lines of file f1.txt which only consist capital alphabets"
grep "^[A-Z]\{1,\}$" f1.txt
echo "--------------------------------------------------------"
echo "p. Search all lines in file f1.txt which ends with '.'"
grep "\. $" f1.txt
echo "--------------------------------------------------------"



---------------------------
q1gretestNum.sh


#finding gretest amont three numbers a,b,c
echo -n "Enter Number A: "
read A
echo -n "Enter Number B: "
read B
echo -n "Enter Number C: "
read C

if test $A -gt $B 
then
	if test $A -gt $C 
	then
		echo "Number A $A is gretest"
	else
		
		echo "Number C $C is gretest"
	fi
else
	
	if test $B -gt $C 
	then
		echo "Number B $B is gretest"
	else
		
		echo "Number C $C is gretest"
	fi
fi




---------------------------
q20awk.sh


echo "a. Print name of the employee and designation of employee number 1021"
	awk -F"|" '$1 == 1006 {print $2,$3}' f2.txt
echo "-------------------------------------------------------"
echo "b. Print name of the employee and designation of employees having salary > 10000"
	awk -F"|" '$6 > 10000 {print $2,$3}' f2.txt
echo "-------------------------------------------------------"
echo "c. Print name of the employee and designation of employee of Finance department"
	awk -F"|" '$4 == "finance" {print $2,$3}' f2.txt
echo "-------------------------------------------------------"
echo "d. Same as 20(c) using printf statement."
	awk -F"|" '$4 == "finance" {printf "%-20s %-15s\n",$2,$3}' f2.txt
echo "-------------------------------------------------------"
echo "e. Same as 20(c) using printf statement and redirect the output to out.txt file"
	awk -F"|" '$4 == "finance" {printf "%-20s %-15s\n",$2,$3 > "out.txt"} ' f2.txt
echo "-------------------------------------------------------"
echo "f. Print Serial number, employee number and employee name using printf statement of all managers and presidents."
	awk -F"|" '$3=="manager"||$3=="president" {printf "%3d %-20s %-12s \n",NR,$1,$2}' f2.txt
	
echo "-------------------------------------------------------"
echo "g. Print Serial number, employee number, employee name and salary with header title “Manager Details” and footer average salary. (Use separate c1.awk script file and call it in"
	awk -F"|" -f c1.awk f2.txt

echo "-------------------------------------------------------"
echo "h. Same as 20(g) but accept designation as input (using getline)."
	awk -F"|" -f c2.awk f2.txt
---------------------------
q2allPrimeNum.sh


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




---------------------------
q3evenOrOdd.sh


echo  -n "Enter Number: "
read NUM

if test $NUM -eq 0
then
	echo "Number is Zero"
	exit
fi
M=`expr $NUM % 2`

if test $M -eq 0
then
	echo "Number is Even"
else
	echo "Number is Odd"
fi


---------------------------
q4Pattern.sh


NUM=5
I=0
while test $I -le $NUM
do
	J=0
	while test $J -le $I
	do
		echo -n "* "
		J=`expr $J + 1`
	done
	I=`expr $I + 1`
	echo ""
done

---------------------------
q5SumOfDigits.sh


echo -n "Enter Number: "
read NUM
SUM=0
until test $NUM -eq 0
do
	RES=`expr $NUM % 10`
	SUM=`expr $SUM + $RES`
	NUM=`expr $NUM / 10`
done

echo "SUM : $SUM"

---------------------------
q6leapYear.sh


echo -n "Enter Year: "
read YEAR

if test $YEAR -lt 0
then
	echo "Year Must Be Positive Integer"
else
	if test $(expr $YEAR % 4) -eq 0
	then
		echo "It is Leap Year"
	else
		echo "It is Not Leap Year"
	fi
fi


---------------------------
q7fibonacci.sh


echo -n "Enter Number N: "
read N

N1=0
N2=1

while test $N2 -le $N
do
	echo $N2
	T=$N2
	N2=`expr $N1 + $N2`
	N1=$T
done

---------------------------
q8salaryCale.sh


echo -n "Enter Basic Salary: "
read basic

echo "Choose what to find: "
echo "a. for Dearness allowance"
echo "b. for Provident Func"
echo "c. for Hourse Rent"
echo "d. for Income Tax deducted"
echo "e. for Take Home Salary"
#read opt

da="$((( $basic *  90 ) / 100 ))"
pf="$((( $basic *  12 ) / 100 ))"
hra="$(((( $basic *  20 ) / 100 ) + $da))"
it="$((( (($basic + $da) + $hra ) *  5 ) / 100 ))"
ths=`expr $basic + $da + $hra - $it`
read opt
case $opt in
	a)
		echo $da
		;;
	b)
		echo $pf
		;;
	c)
		echo $hra
		;;
	d)
		echo $it
		;;
	e)
		echo $ths
		;;
	*)
		echo "No valid Option Selected"

esac

---------------------------
q9filePermissionUGA.sh


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

