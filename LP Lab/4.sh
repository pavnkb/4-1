function LCM()
{
 ans=$(($1/$2))
 echo "$ans"
}
read -p "Enter Number 1: " a
read -p "Enter Number 2: " b
lcm=$((a*b))
while [ $a != $b ]
do
if [ $a -ge $b ]
then
a=$((a-b))
else
b=$((b-a))
fi
done
echo "GCD is $a"
echo "LCM is $( LCM $lcm $a )"
