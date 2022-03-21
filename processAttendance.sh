echo "Processing Attendance"
a=`cat employees.dat | tr -s " " | cut -d " " -f 1`
cat "">"attd-summary.txt"
for i in $a
do
p=0
abs=0
lv=0
for j in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do

b=`grep $i "$j-4-2022.data" | cut -d " " -f 2`
echo $b
if [ "$b" = "A" ];
then abs=`expr $abs + 1`
fi

if [ "$b" = "P" ];
then p=`expr $p + 1`
fi

if [ "$b" = "L" ];
then lv=`expr $lv + 1`
fi
done
echo "$i: $p $abs $lv">>"attd-summary.txt"
done
