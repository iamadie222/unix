echo "a. To print only last line of f1.txt"
	sed -n "$ p" f1.txt
echo "-------------------------------------------------------"
echo "b. To print line number 1-3, 6-7 and 10 of f1.txt"
	sed -n -e "1,3 p" -e "6,7 p" -e "10 p" f1.txt
echo "-------------------------------------------------------"
echo "c. To print lines beginning with SDJIC of f1.txt"
	sed -n "/^SDJIC/ p" f1.txt
echo "-------------------------------------------------------"
echo "d. Print three lines starting from fourth line of f1.txt"
	sed -n "4,$ p" f1.txt | sed "3 q"
echo "-------------------------------------------------------"
echo "e. Print all blank lines of file f1.txt"
	sed -n "/^$/ p" f1.txt
echo "-------------------------------------------------------"
echo "f. Print lines having either of “sdjic” or “sdjyc”"
	sed -n "/sdj[iy]c/ p" f1.txt
echo "-------------------------------------------------------"
echo "g. Lines beginning with either alphabet or digit"
	sed -n "/[a-zA-Z0-9]/ p" f1.txt
echo "-------------------------------------------------------"
echo "h. To insert a line “additional line” before every line"
	sed "i \ additional line \ " f1.txt
echo "-------------------------------------------------------"
echo "i. To replace every occurrence of \| with : of first three lines"
	sed "1,3 s/|/:/g" f1.txt
echo "-------------------------------------------------------"
echo "j. To replace every occurrence of '|' with ':' of every line"
	sed "s/|/:/g" f1.txt
echo "-------------------------------------------------------"
echo "k. To remove all the lines having word \“fail\” from file f1.txt \(delete command\)"
	sed "/fail/ d" f1.txt



