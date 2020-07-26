g++ -c queue.h queue.cpp
g++ -c fqueue.h fqueue.cpp
g++ -c FPU.h FPU.cpp
g++ -c TestFPU.cpp
g++ -o TestFPU TestFPU.cpp FPU.h FPU.cpp queue.h queue.cpp fqueue.h fqueue.cpp
./TestFPU TestCases Operand1 Operand2 Operations expected

