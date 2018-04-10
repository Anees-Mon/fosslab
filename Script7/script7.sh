if [ $# -ne 2 ]; 
then
	echo "Wrong input!!! Input as:./script7 ulist username "
else
	count=$(ls | grep $1 | wc -l)
	if [ $count -eq 0 ]; 
	then
		echo "$1 File doesn't exist!!!"
	else
		count=`grep "$2" $1| wc -l`
		if [ $count -eq 0 ];
		then
		echo "Username not exist!"
		echo "Adding username to $1"
		echo "$2" >> $1
		else 
		echo "Username already exists !"
		fi
	fi
	cat ulist.txt
fi
