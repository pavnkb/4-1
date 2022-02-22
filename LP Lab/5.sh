if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
 echo "Invaild Format of arguments"
else
 if [ -f $1 ]
 then
  cnt=1
  while read line
  do
   if [ $cnt -le $3 ] && [ $cnt -ge $2 ]
   then
   echo "$line"
   fi
  cnt=$((cnt+1))
  done< "$1"
 else
  echo "File Not Found"
 fi
fi
