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
