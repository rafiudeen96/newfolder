echo "hello world" | grep -iw h


if [ $? == 0 ]; then
	echo "pass";
else
	echo "fail";

fi
