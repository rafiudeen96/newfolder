ls newfile newfile2 > output.txt 2>&1
if [ $? -gt 0 ]; then 
       	echo "Something wasn't right"
	exit 1
else
      echo "the output was saved in output.txt"
      exit 0

fi

