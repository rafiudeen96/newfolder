
if [ $# -lt 1 ];then
	echo "Please type a number followed by a space along with the `basename $0`"
	exit 1
else

if (( $1 <= 10 )); then 
	echo "The number is less than or equal to 10";
elif (( $1 > 10 & $1 < 20 )); then
	echo "The number is between 10 and 20";
else
	echo "The number is greater than 20";
fi

fi

