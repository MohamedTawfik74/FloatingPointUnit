
#include "FPU.h"


FPU::FPU (void) {
	cout << "ERROR!!!!!! : you must pass operands and operations queue " << endl ;
} 



FPU::FPU (fqueue Operand1, fqueue Operand2,queue Operation) {

	Operand1queue  = Operand1  ;
	Operand2queue  = Operand2  ;
	Operationqueue = Operation ;
} 

FPU::~FPU (void) {
	// nothing to do 
}


void FPU::GenerateResults (fstream * outputFile , fstream * OperationsFile , fstream * Operand1File , fstream * Operand2File) {

	float Operand1 , Operand2 ;
	int Operation ;
	int Dummy ;

	while ( !Operand1queue.IsEmpty() && !Operand2queue.IsEmpty() && !Operationqueue.IsEmpty() ) {
		Operand1  = Operand1queue.Dequeue() ;
		Operand2  = Operand2queue.Dequeue() ;
		Operation = Operationqueue.Dequeue() ;
		printOperation ( Operation , OperationsFile ) ; 
		printFloatBinary (Operand1 , Operand1File) ;
		printFloatBinary (Operand2 , Operand2File) ;
		if (Operation == 0) { // ADD
			ADD (  Operand1 , Operand2 , outputFile ) ; // Do the operation
		}
		else if (Operation== 1) { // Sub 
			 SUB ( Operand1 , Operand2 , outputFile ) ; // Do the operation	 
		}
		else if (Operation == 2) { // Mul
			MUL (  Operand1 , Operand2 , outputFile ) ; // Do the operation
		}
		else if (Operation == 3) { // Div
			DIV ( Operand1 , Operand2 , outputFile ) ; // Do the operation	
		}
		else {
			cout << "UNKNOWN OPERATION !!!!!!" << endl ;
		}
		
	}
}


void FPU::printFloatBinary (float number , fstream * File) {
	
	int counter ;
	char outputBit = 0 ;
	union
    {
        float input; // assumes sizeof(float) == sizeof(int)
        long   output;
    } data;
		data.input = number ;
		
		for ( counter = 31 ; counter >= 0 ; counter-- ) {
			outputBit = ((data.output>>counter) & 1 ) + '0' ;
			File->put(outputBit);
		}
		File->put('\n');	
}

void FPU::printOperation (int Opera , fstream * OperationFile ) {
	
	OperationFile->put(Opera+'0');
	OperationFile->put('\n');
}


void FPU::ADD (float Operand1, float Operand2 , fstream * outputFile ) {
	printFloatBinary(Operand1+Operand2,outputFile);	
}

void FPU::SUB (float Operand1, float Operand2 , fstream * outputFile ) {
	printFloatBinary(Operand1-Operand2,outputFile);	
}

void FPU::MUL (float Operand1 , float Operand2 , fstream * outputFile ) {
	printFloatBinary(Operand1*Operand2,outputFile);
}

void FPU::DIV (float Operand1 , float Operand2 , fstream * outputFile ) {
	printFloatBinary(Operand1/Operand2,outputFile);
}
