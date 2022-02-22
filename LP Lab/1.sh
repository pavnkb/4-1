w=0
l=0
c=0
data=$(cat file.txt)
for (( i=0; i<${#data}; i++ ));
do
 if [ "${data:$i:1}" == " " ]
 then
 w=$((w+1))
 elif [ "${data:$i:1}" == $'\n' ]
 then
 l=$((l+1))
 w=$((w+1))
 else
 c=$((c+1))
 fi
done
l=$((l+1))
w=$((w+1))
echo "Words: $w, Lines: $l, Chars: $c"
