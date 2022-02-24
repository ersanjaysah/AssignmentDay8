#!/bin/bash -x

read -p "random number is = " $((RANDOM%6+1))

declare -A dict
a=0
b=0
c=0
d=0
e=0
f=0
i=1
n=10
while ((a<$n && b<$n && c<$n && d<$n && e<$n && f<$n))
do
	randomCheck=$(($RANDOM%6+1))
	dict[$i]=$randomCheck
	((i++))
	case $randomCheck in
			1 )
				((a++))
			;;
			2 )
				((b++))
			;;
			3 )
				((c++))
			;;
			4 )
				((d++))
			;;
			5 )
				((e++))
			;;
			6 )
				((f++))
			;;
			* )
				echo "check again"
	esac
done

echo "All the values are : " ${dict[@]}
echo "The total number of dice rolled = ${#dict[@]} times"

