if [ $# -lt 1 ];then
	echo "Type eyes or hair or hand to print its colour"
	exit 1
else

	declare -A as_array
	as_array[eyes]=blue
	as_array[hair]=black
	as_array[hand]=white
	echo ${as_array[$1]}
fi
