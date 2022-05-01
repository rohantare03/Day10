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

sum4=`echo $a $b $c | awk '{print $1%$2+$3}'`;
echo "$a%$b+$c = $sum4"

declare -A results=( [sum1]="$sum1" [sum2]="$sum2" [sum3]="$sum3" [sum4]="$sum4" )
echo "The Computation results in Dictionary : ${results[@]}"

i=0
for values in  "${!results[@]}"
do
        Array[i++]="${results[$values]}"
done

echo "The computation results in an Array : ${Array[@]}"

array=($(printf '%s\n' "${Array[@]}" | sort -nr))
echo "The Computation result in Descending order :"
echo "${array[@]}"

Aarray=($(printf '%s\n' "${Array[@]}" | sort -n))
echo "The Computation result in Ascending order :"
echo "${Aarray[@]}"
