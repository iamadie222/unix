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


