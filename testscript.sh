
echo "hello world" | grep -w w

if [ $? == 0 ]; then
	echo "pass"
else
	echo "fail"
fi
