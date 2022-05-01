read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Numbers are : $a $b $c"

sum1=`echo $a $b $c | awk '{print $1+$2*$3}'`;
echo "$a+$b*$c = $sum1"

sum2=`echo $a $b $c | awk '{print $1*$2+$3}'`;
echo "$a*$b+$c = $sum2"

sum3=`echo $a $b $c | awk '{print $3+$1/$2}'`;
echo "$c+$a/$b = $sum3"
