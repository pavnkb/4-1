until false
do
read -p "Enter Choice: " num
if [ "$num" == "q" ]
then
 exit
else
 if [ -f $num ]
 then
  echo "This is a file and it has $(wc -l < $num) lines"
 elif [ -d $num ]
 then
  echo "This is a directory"
 else
  echo "Not a file or directory"
 fi
fi
done
