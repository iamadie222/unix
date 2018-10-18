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



