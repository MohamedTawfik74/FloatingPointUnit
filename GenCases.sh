rm TestCases 
> TestCases

declare -i NumOfCase=2000

## ADD

for (( i = 0; i < NumOfCase; i++ ))
do
echo " ($RANDOM.$RANDOM) + $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " 0.$RANDOM + ($RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (0.00$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " ($RANDOM$RANDOM.$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM + ($RANDOM$RANDOM.$RANDOM);" >> TestCases
done 

## ADD different signs

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM.$RANDOM) + $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " 0.$RANDOM + (-$RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-0.00$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM$RANDOM.$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM + (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done


## SUB different signs

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM.$RANDOM) - $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " 0.$RANDOM - (-$RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-0.00$RANDOM) - 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM$RANDOM.$RANDOM) - 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM - (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done

## MUL

for (( i = 0; i < NumOfCase; i++ ))
do
echo " ($RANDOM.$RANDOM) * $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " 0.$RANDOM * ($RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (0.00$RANDOM) * 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " ($RANDOM$RANDOM.$RANDOM) * 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM * ($RANDOM$RANDOM.$RANDOM);" >> TestCases
done
## MUL different signs

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM.$RANDOM) - (-$RANDOM.$RANDOM);" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " 0.$RANDOM - ($RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-0.00$RANDOM) - (-0.$RANDOM);" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " (-$RANDOM$RANDOM.$RANDOM) * 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < NumOfCase; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM * (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done

