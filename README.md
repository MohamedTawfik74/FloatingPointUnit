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

The Sign, Addition, Subtraction and Multiplication circuits has been implemented and **tested by 5 millions test cases and passed all of them except Standard Exceptions**. <br/>
![Screenshot from 2020-07-24 14-46-28](https://user-images.githubusercontent.com/36772600/88416796-1c0a6380-cde1-11ea-8c95-e7f82acb9b79.png)
<br/>
The design has been proven using post-synthesis simulation on Xilinx ISE. <br/>
<br/>
The operating frequency on SPARTAN6 Xilinx FPGA (xc6slx9-2tqg144) is up to **125 MHz**. <br/>
![Timing report](https://user-images.githubusercontent.com/36772600/88421252-8541a500-cde8-11ea-90dd-d0a56b72c423.png)

## Project Files 

1. source: contains the verilog files for the all components of the design. 

2. Testing: contains C++ code which helps us to generate input for the testing of the design.

3. postsynFPGA: contains post-synthesis simulation you can download it and run it on Xilinx ISE.

4. GenCases.sh: It's a bash script to **generate rondom 5 millions test cases** for test bench of the design.

5. Running.sh: It's a bash script that runs the **GenCases.sh , TestFPU.cpp and TestFPU.v** test bench to test the design. 

## Design and Algorithm

To perform floating point operation following IEEE-754 Standard, you need to calculate Sign, Exponent and Mantissa of Result.<br/>
You ara passing through specific steps while calculating result: <br/>
1. Align Operands. 
2. Calculate Result.
3. Normlize Result.
4. Rounding.

In my design, I pipelined it into **five stages**. Lets look in deep in every step:

### 1. Addition and Subtraction Circuit

To optimize in power and area, we could use the same circuit with additonal control signals. <br/>

First step is aligning the two operands, so we need to get the difference between the exponents. <br/>
Then, we need shift the mantissa with the smaller exponent by the calculated difference and here we ill face first challange as the normal shifter is very slow.<br/>
So I used [Barrel shifter](https://en.wikipedia.org/wiki/Barrel_shifter) which is very optimized in timing for sure but it has a lot of wires and muxes.<br/>

Second step is calulating the result and here is the difference between the Add and Sub but first we need to understand concept in the standard. It is the sign and the Mantissa are being calculated totally independent. How this effect the operation ? this introduces to us **Effective Operation in ADD/SUB Circuit** that is the actual operation, which will be done, is depending on the signs of the both operands and the required operation as seen in the following table: <br/>
![Effectie operation](https://user-images.githubusercontent.com/36772600/88456692-0f891800-ce80-11ea-8585-7d8f344ec7d1.PNG) <br/>
To optimize in area and power, I use only one adder to perform ADD and SUB. How does this work ? by adding Conditional Inverting which is inverting the smaller opernad when the effective operation is SUB. This always produces postive result to avoid adding inverting component to the result. <br/>

Third step is normlizing the result. We need to realize the possible results here. In Addition, we could have overflow which means the Result is in **1X.XXXX** form so the result need to be shifted right by one postion and update exponent. In Subtraction, it's more complicated as the results may be have many leading zeros as **0.00001, 0.0000001** so the result need to be shifted left by number of leading zeros to return to the orginal form of the standard **1.XXXX** but we need to calculate the number of the leading zeros. This introduces to us new critical path.<br/>

To avoid this critical path, we designed **Leading Zeros Counter(LZC)** which is calculating the number of the leading zeros. Then, we use this number with left barrel shifter to notmlize the result and the substract it from the exponent base. LZC is depending on **Local Counter Network(NLC)** which is inspired from[4] but we modified to work on 6 bits so we have 4 NLCs work together in parallel then we use the outputs in boolean function to cacluate the number of leading zeros .<br/>
![NLC](https://user-images.githubusercontent.com/36772600/88457940-757a9d00-ce8a-11ea-9761-855267c9be60.PNG)<br/>
We could notice in the timing report it has a very optimized delay compared with priority encoder or any useful components to get the required number. It's also very optimized in area and power as we only use small logic gates.<br/>
![NLC Time](https://user-images.githubusercontent.com/36772600/88458005-08b3d280-ce8b-11ea-9c7e-7c369341ff24.PNG)<br/>

After Normalization, we have the final result but need to be rounded due to we only have 23 bits. Rounding has many algorithms. We chose **"Round to Nearest, Tie to Even"**. As in this mode, the value represented is the closest possible to the exact value, it produces the smallest absolute error.<br/>
![Rounding](https://user-images.githubusercontent.com/36772600/88458580-56cad500-ce8f-11ea-9e32-356232e40b98.PNG)<br/>
This Rounding algorthim is required 3 additional bits while normalizing the smaller opernad **Guard, Round and Sticky bit**. <br/>
Guard and Sticky bits are the first discarded bits while normlization and the Sticky bit is the OR of the other discarded bits.<br/>
We use them to generate Round Control Signal as **Round = G(L+R+T)**.

**Rounding has many algorithms so while testing it depends on which algorthim this hardware or site uses so we could found different in final result in rounding. This is case is coverd in test bench to tell us number of different rounding cases. In the end, this difference is neglectable.**

### 2. Multiplication Circuit

The multiplication is performed as **Er = Ex+Ey**, **Sr= Sx ^ Sy** and **Mr = Mx * My**.<br/>

The aligning step is useless here and the rounding step done as before. The Normlization here is shifting the result one right shift or none as the multiplication is performed between two operands ϵ [1,2) so the result ϵ [1,4).<br/>

The challange here how to do the multiplication as it's a critical path. We use DADDA 8-bit mutliplier and partition every operand into 3 blocks of 8 bits.<br/>
![Part](https://user-images.githubusercontent.com/36772600/88459209-eecabd80-ce93-11ea-9bbe-f33924ba0cb9.PNG)<br/>
We get the result of the multiplication for every two bytes in the first stage.<br/>
![First stage](https://user-images.githubusercontent.com/36772600/88459311-b081ce00-ce94-11ea-8f11-caea89c7ca8e.PNG)<br/>
In the second stage, we add the results of mul. for the every block to get 22-bit result.<br/>
![Stage2](https://user-images.githubusercontent.com/36772600/88459445-e7a4af00-ce95-11ea-9214-297663f094b1.PNG)<br/>
In third stage, we add all the previous results to get 48-bit result of multiplication.<br/> 
![Stage3](https://user-images.githubusercontent.com/36772600/88459510-3b16fd00-ce96-11ea-9a72-310978ac3aa7.PNG)<br/>
This design helps us to eliminate this critical path and the maximum frequency remain the same as the ADD/SUB circuit.

**There are more tricks and details and it's very hard to cover all of them here so please if you need to ask about any thing send me an email.**<br/>
**My email : muhamedtawfik@outlook.com**

## References
[1] [Digital Arithmetic (The Morgan Kaufmann Series in Computer Architecture and Design) 1st Edition](https://www.amazon.com/Digital-Arithmetic-Kaufmann-Computer-Architecture/dp/1558607986).<br/>
[2] [Handbook of Digital CMOS Technology, Circuits and Systems by Karim Abbas](https://www.amazon.com/Handbook-Digital-Technology-Circuits-Systems/dp/3030371948/ref=sr_1_1?keywords=handbook+of+digital+cmos&qid=1578725915&sr=8-1).<br/>
[3] [CS5830 course at The university of Utah](https://my.eng.utah.edu/~cs5830/).<br/>
[4] [Modular Design Of Fast Leading Zeros Counting Circuit](https://www.researchgate.net/publication/284919835_Modular_Design_Of_Fast_Leading_Zeros_Counting_Circuit).<br/>
