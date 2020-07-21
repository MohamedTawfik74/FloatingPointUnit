rm TestCases 
> TestCases


for (( i = 0; i < 100; i++ ))
do
echo " $RANDOM.$RANDOM - $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < 100; i++ ))
do
echo " 0.$RANDOM - $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < 100; i++ ))
do
echo " 0.00$RANDOM - 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < 100; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM - 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < 100; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM - $RANDOM$RANDOM.$RANDOM;" >> TestCases
done
