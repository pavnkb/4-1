read -p "Enter file name:" file
if [ -f $file ]
then
data=$(cat $file)
echo "$data"
declare -a arr
for (( i=0; i<${#data}; i++ ))
do
arr+=("${data:$i:1}")
done
sz=${#data}
sz=$((sz-1))
for (( i=sz; i>=0; i-- ));
do
echo -n "${arr[$i]}"
done
else
echo "File Not Found"
fi
