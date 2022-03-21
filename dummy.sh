RANDOM=$$
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
a=`cat employees.dat | tr -s " " | cut -d " " -f 1`
flag=0
for x in $a
do
if test $flag -ne 0;
then
b="$RANDOM"
echo $b
if test $b -le 10000 -a $b -ge 0;
then
echo "$x P" >>"$i-4-2022.data"
fi
if test $b -le 20000 -a $b -ge 10001;
then
echo "$x A" >>"$i-4-2022.data"
fi
if test $b -ge 20001;
then
echo "$x L" >>"$i-4-2022.data"
fi

else
b="$RANDOM"
if test $b -le 10000 -a $b -ge 0;
then
echo "$x P" >"$i-4-2022.data"
fi
if test $b -le 20000 -a $b -ge 10001;
then
echo "$x A" >"$i-4-2022.data"
fi
if test $b -ge 20001;
then
echo "$x L" >"$i-4-2022.data"
fi
flag=1
fi
done
done
