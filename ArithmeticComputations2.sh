read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Numbers are : $a $b $c"

sum1=`echo $a $b $c | awk '{print $1+$2*$3}'`;
echo "$a+$b*$c = $sum1"
