echo -n "Enter Username: "
read User
if [ $(whoami) = $User ]
then
	echo "Entered Username is currently logged in"
else
	echo "Entered Username is currently not logged in"
fi

