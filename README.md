# Floating Point Unit

This is a design of single precision Floating Point Unit using Verilog, synthesize it using Xilinx ISE and test it using [Icarus Verilog](https://iverilog.fandom.com/wiki/User_Guide) and C++ code using [GCC compiler](https://gcc.gnu.org/).<br/>
The FPU design is following  [IEEE-754 Standard](https://en.wikipedia.org/wiki/IEEE_754) :<br/>
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/Single-Precision-IEEE-754-Floating-Point-Standard.jpg)

### The targets to be acheived list: <br/>
- [X] Addition. <br/>
- [X] Subtraction. <br/>
- [X] Multiplication. <br/>
- [ ] Division. <br/>
- [ ] Exceptions. <br/>
- [X] post-synthesis FPGA proven. <br/>
- [ ] Synthesized using DC shell. <br/>

## Results

The Sign, Addition, Subtraction and Multiplication circuits has been implemented and tested by 5 millions test cases and passed all of them except Standard Exceptions. <br/>
![Screenshot from 2020-07-24 14-46-28](https://user-images.githubusercontent.com/36772600/88416796-1c0a6380-cde1-11ea-8c95-e7f82acb9b79.png)
<br/>
The design has been proven using post-synthesis simulation on Xilinx ISE. <br/>
<br/>
The operating frequency on SPARTAN6 Xilinx FPGA (xc6slx9-2tqg144) is up to **125 MHz**. <br/>
![Timing report](https://user-images.githubusercontent.com/36772600/88421252-8541a500-cde8-11ea-90dd-d0a56b72c423.png)

## Project Files 

1.source: contains the verilog files for the all components of the design. <br/>
2.Testing: contains C++ code which helps us to generate input for the testing of the design. <br/>
3.postsynFPGA: contains post-synthesis simulation you can download it and run it on Xilinx ISE. <br/>
4.GenCases.sh: It's a bash script to generate rondom 5 millions test case for test bench of the design. <br/>
5.Running.sh: It's a bash script that runs the GenCases.sh , TestFPU.cpp and TestFPU.v test bench to test the design. <br/>

## Design and Algorthim

## References
[1] [Digital Arithmetic (The Morgan Kaufmann Series in Computer Architecture and Design) 1st Edition](https://www.amazon.com/Digital-Arithmetic-Kaufmann-Computer-Architecture/dp/1558607986).<br/>
[2] [Handbook of Digital CMOS Technology, Circuits and Systems by Karim Abbas](https://www.amazon.com/Handbook-Digital-Technology-Circuits-Systems/dp/3030371948/ref=sr_1_1?keywords=handbook+of+digital+cmos&qid=1578725915&sr=8-1).<br/>
[3] [CS5830 course at The university of UTAH](https://my.eng.utah.edu/~cs5830/).<br/>
[4] [Modular Design Of Fast Leading Zeros Counting Circuit](https://www.researchgate.net/publication/284919835_Modular_Design_Of_Fast_Leading_Zeros_Counting_Circuit).<br/>
