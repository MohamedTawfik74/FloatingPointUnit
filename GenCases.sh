rm TestCases 
> TestCases

<<<<<<< HEAD
declare -i NumOfCase=2

## ADD

for (( i = 0; i < NumOfCase; i++ ))
=======
## ADD

for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " ($RANDOM.$RANDOM) + $RANDOM.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " 0.$RANDOM + ($RANDOM.$RANDOM) ;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (0.00$RANDOM) + 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " ($RANDOM$RANDOM.$RANDOM) + 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " $RANDOM$RANDOM.$RANDOM + ($RANDOM$RANDOM.$RANDOM);" >> TestCases
done 

## ADD different signs
<<<<<<< HEAD

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
=======

for (( i = 0; i < 200000; i++ ))
do
echo " (-$RANDOM.$RANDOM) + $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " 0.$RANDOM + (-$RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " (-0.00$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " (-$RANDOM$RANDOM.$RANDOM) + 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " $RANDOM$RANDOM.$RANDOM + (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done


## SUB different signs

for (( i = 0; i < 200000; i++ ))
do
echo " (-$RANDOM.$RANDOM) - $RANDOM.$RANDOM;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " 0.$RANDOM - (-$RANDOM.$RANDOM) ;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
do
echo " (-0.00$RANDOM) - 0.$RANDOM;" >> TestCases
done

for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (-$RANDOM$RANDOM.$RANDOM) - 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " $RANDOM$RANDOM.$RANDOM - (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done

## MUL

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " ($RANDOM.$RANDOM) * $RANDOM.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " 0.$RANDOM * ($RANDOM.$RANDOM) ;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (0.00$RANDOM) * 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " ($RANDOM$RANDOM.$RANDOM) * 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " $RANDOM$RANDOM.$RANDOM * ($RANDOM$RANDOM.$RANDOM);" >> TestCases
done
## MUL different signs

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (-$RANDOM.$RANDOM) * $RANDOM.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " 0.$RANDOM * (-$RANDOM.$RANDOM) ;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (-0.00$RANDOM) * 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " (-$RANDOM$RANDOM.$RANDOM) * 0.$RANDOM;" >> TestCases
done

<<<<<<< HEAD
for (( i = 0; i < NumOfCase; i++ ))
=======
for (( i = 0; i < 200000; i++ ))
>>>>>>> d86dc2848c890a0c5f24362146b71db9c4cff19c
do
echo " $RANDOM$RANDOM.$RANDOM * (-$RANDOM$RANDOM.$RANDOM);" >> TestCases
done

