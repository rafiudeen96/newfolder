
function function_add(){
		if [ $# -lt 2 ];then
			echo "We have to put two numbers in function call"
			exit 1
		else

			echo $(($1 + $2))
		fi
}

result=$(function_add $1 $2)
echo $result

