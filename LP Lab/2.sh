read -p "Enter file name:" file
if [ -f $file ]
then
echo "Number of chars: $(cat $file | wc -c)"
echo "Number of lines: $(cat $file | wc -l)"
echo "Number of words: $(cat $file | wc -w)"
else
echo "File Not Found"
fi
