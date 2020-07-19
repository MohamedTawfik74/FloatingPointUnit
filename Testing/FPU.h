#include <iostream>
using namespace std;

#include "queue.h"
#include "fqueue.h"
#include <bitset>
#include <climits>
#include <fstream>

/*
* this class is a behavioural model of FPU, which impelemented by our verliog code.
*/

class FPU {

private :

	fqueue Operand1queue ; // hold the operand1 data
	fqueue Operand2queue ; // hold the operand2 data
	queue Operationqueue ; // hold the operations
	
	queue Results ; // hold the results of the operations
	
	void ADD (float Operand1, float Operand2 , fstream * outputFile );
	void SUB (float Operand1, float Operand2 , fstream * outputFile );
	void MUL (float Operand1, float Operand2 , fstream * outputFile );
	void DIV (float Operand1, float Operand2 , fstream * outputFile );
	
public :

	FPU(void);
	FPU( fqueue Operand1 , fqueue Operand2 , queue Operation ); //constructor 
	
	~FPU(void); // Destructor 
	
	void GenerateResults (fstream * outputFile , fstream * OperationsFile , fstream * Operand1File , fstream * Operand2File ) ; // generate the results of the model	
	void printFloatBinary (float number , fstream * File) ; // print the results in binary representation in the file
	void printOperation ( int Opera , fstream * OperationFile ) ;
};


