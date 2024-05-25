if [ $# -lt 2 ]; then 
	exit 1
fi

echo "This is your first parameter : $1"
echo "This your second parameter : $2"

echo "Here is all your parameters:$@"
