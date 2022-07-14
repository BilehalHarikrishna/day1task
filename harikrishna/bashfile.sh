#!/bin/bash
echo "Here Iam reading Employee detailes- ########"
echo
read -p "Enter a file Name: " file
echo

echo "Here I am etracting lines by using the certain pattern Male and redicting another file#############"
echo `grep -n "Male" $file`>data2.txt
read -p "Enter a filename like data2.txt :" file2
echo

echo "sorting the third coloumn ######################### "
echo `sort -k 3n $file2` > data3.txt
read -p "Enter a filename like data3.txt :" file3
echo

echo "Here substituting the Male to male and printing those line twice ####################"
echo `sed 's/Male/male/p' $file3`>data4.txt
read -p "Enter a filename like data4.txt :" file4
echo

echo "Here taking the 1st and 5th coloumn and cut last one and redirect #####################"
echo `awk '{print $1,$5}' $file4 |cut --complement -d " " -f 1 `> data5.txt
read -p "Enter a filename like data5.txt :" file5
echo

echo "Finally checking output- ####################################"
if [ $file5 > 12300 ]
then
echo "Some one geting a salary more than the -\12300"
else
echo "All are geting a same salary"
fi

echo

echo "Print a prime numbers in between the 1 to 100 ##################"

for ((i=2;i<=100;i++))
do
t=1
for ((j=2;j<$i;j++))
do
if (($i%$j==0))
then
t=0
break
fi
done
if [ $t == 1 ]
then
echo $i
fi
done
echo "Thank you"
