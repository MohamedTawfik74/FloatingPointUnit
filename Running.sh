./GenCases.sh

cp TestCases ./Testing
cd Testing
rm Operand1
> Operand1
rm Operand2
> Operand2
rm Operations
> Operations
rm expected
> expected
g++ -c queue.h queue.cpp
g++ -c fqueue.h fqueue.cpp
g++ -c FPU.h FPU.cpp
g++ -c TestFPU.cpp
g++ -o TestFPU TestFPU.cpp FPU.h FPU.cpp queue.h queue.cpp fqueue.h fqueue.cpp
./TestFPU TestCases Operand1 Operand2 Operations expected

cp Operand1 ../source
cp Operand2 ../source
cp Operations ../source
cp expected ../source 

#cp Operand1 ../postsynFPGA
#cp Operand2 ../postsynFPGA
#cp Operations ../postsynFPGA
#cp expected ../postsynFPGA 

cd .. 
cd source

iverilog -o FPU TestFPU.v FPU.v
vvp FPU
cp Results ..

#cd ..
#cd postsynFPGA

#iverilog -o FPU_synthesis TestFPU.v FPU_synthesis.v
#vvp FPU_synthesis
#cp postsynResults .. 

 #sed '1,500p;d' TestCases > Passed
