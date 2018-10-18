BEGIN{
       	print "Manager Details"
} $3=="manager"||$3=="president"{
	count++;
	total += $6
	printf "%3d %-20s %-12s %10.2f \n",NR,$1,$2,$6
} 
END{
	printf "Average Salary: %d\n",total/count
}
