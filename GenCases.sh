rm TestCases 
> TestCases

## different signs

#for (( i = 0; i < 100000; i++ ))
#do
#echo " ($RANDOM.$RANDOM) - $RANDOM.$RANDOM;" >> TestCases
#done

#for (( i = 0; i < 100000; i++ ))
#do
#echo " 0.$RANDOM - ($RANDOM.$RANDOM) ;" >> TestCases
#done

#for (( i = 0; i < 100000; i++ ))
#do
#echo " (0.00$RANDOM) - 0.$RANDOM;" >> TestCases
#done

for (( i = 0; i < 500; i++ ))
do
echo " (-$RANDOM$RANDOM.$RANDOM) - 0.$RANDOM;" >> TestCases
done

#for (( i = 0; i < 100000; i++ ))
#do
#echo " $RANDOM$RANDOM.$RANDOM - ($RANDOM$RANDOM.$RANDOM);" >> TestCases
#done

## MUL

