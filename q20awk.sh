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