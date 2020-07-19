#include <cstring>
#include <string>
#include <fstream>
#include "queue.h"
#include "fqueue.h"
#include "FPU.h"
#include <iostream>
using namespace std;

#define LineSize 100

int main (int argc , char * argv[]) {

	string TestCasesFileName ;  // to get file name which is holding command
	fstream TestCasesFile ;  //text file that hold command

	string ExpectedFileName ; // to get file file name that contains data
	fstream ExpectedFile ;  //text file that hold data
	
	string Operand1FileName;
	fstream Operand1File ;
	
	string Operand2FileName ;
	fstream Operand2File ;
	
	string OperationFileName ;
	fstream OperationFile ;
	
	fqueue qOperand1 ;
	fqueue qOperand2 ;
	queue qOperation ;
	
	string sOperand1 ;
	string sOperand2 ;
	string sOperation ;
	
	float fOperand1 ;
	float fOperand2 ;
	long iOperation ;
	
	char FetchedLine [100] = {'\0'};
	char operandN = 1 ;
	
	/*
	 * Expected Inputs
	 * 
	 * argv[0] = path
	 * argv[1] = Test Cases file
	 * argv[2] = Operand1 file
	 * argv[3] = Operand2 file
	 * argv[4] = Operation file
	 * argv[5] = expected file 
	 * argv[6] = \0
	 *
	 * argc = 6
	 *
	 */
	 
	 
	 
	 if (argc != 6) { // notify user for missing arguments
		cout << "Incorrect number of arguments" ;
		return 0 ; // terminate the program due to incorrect input from user
	}

	 
	 // get the test cases file name
	 TestCasesFileName =  argv[1] ; // get the name if the test cases file 
	 
	 // open test cases file
	TestCasesFile.open(TestCasesFileName);
	if (!TestCasesFile.is_open()) { // check if we failed to open data file or not
		cout << "Test Cases File not found" ;
		return 0 ; // terminate program due to first error that the file is doesn't exist
	}
	
	// the file has been opened succesfully.
	
	do{ // until we reach the end of the file
		
		for ( int i = 0 ; FetchedLine[i] != '\0' ; i++ ) {  // it should be partitioned into multiple sub-functions
			
			if( FetchedLine[i] == '+' ) {
				iOperation = 0 ;
				qOperation.Enqueue(iOperation) ;
				operandN= 2 ;
				fOperand1 = stof(sOperand1, NULL) ;
				qOperand1.Enqueue(fOperand1);
			}
			else if (FetchedLine[i] == '-') {
				iOperation = 1 ;
				qOperation.Enqueue(iOperation) ;
				operandN= 2 ;
				fOperand1 = stof(sOperand1, NULL) ;
				qOperand1.Enqueue(fOperand1);
			} 
			else if (FetchedLine[i] == '*') {
				iOperation = 2 ;
				qOperation.Enqueue(iOperation) ;
				operandN= 2 ;
				fOperand1 = stof(sOperand1, NULL) ;
				qOperand1.Enqueue(fOperand1);
			} 
			else if (FetchedLine[i] == '/') {
				iOperation = 3 ;
				qOperation.Enqueue(iOperation) ;
				operandN= 2 ;
				fOperand1 = stof(sOperand1, NULL) ;
				qOperand1.Enqueue(fOperand1);
			}
			else if (FetchedLine[i] == ';' ) {
				fOperand2 = stof(sOperand2, NULL) ;
				qOperand2.Enqueue(fOperand2);			
			}
			else {
			
				if ((FetchedLine[i] <= '9' && FetchedLine[i] >= '0') || FetchedLine[i] == '.' ) {
					if ( operandN == 1 ) {
						sOperand1 += FetchedLine[i] ;	
					}
					else {
						sOperand2 += FetchedLine[i] ;
					}
				}
				else { // discared
					continue ;
				}
			}		
		}
		
		operandN = 1 ;
		sOperand1.clear();
		sOperand2.clear();
		
		TestCasesFile.getline(FetchedLine,100) ; // fetch the next line
		
	}while(!TestCasesFile.eof());
	
	// close test cases file
	TestCasesFile.close();
	
	// generate the expected results
	
	
	FPU ModelTest(qOperand1 ,qOperand2 ,qOperation); 
	
	// print the expected results
	
	// get the test cases file name
	 ExpectedFileName =  argv[5] ; // get the name if the test cases file 
	 
	 // open test cases file
	ExpectedFile.open(ExpectedFileName);
	if (!ExpectedFile.is_open()) { // check if we failed to open data file or not
		cout << "Expected File not found" ;
		return 0 ; // terminate program due to first error that the file is doesn't exist
	}
	
	Operand1FileName = argv[2] ;
	
	Operand1File.open(Operand1FileName);
	if (!Operand1File.is_open()) { // check if we failed to open data file or not
		cout << "Operand1 File not found" ;
		return 0 ; // terminate program due to first error that the file is doesn't exist
	}
	
	Operand2FileName = argv[3] ;
	Operand2File.open(Operand2FileName);
	if (!Operand2File.is_open()) { // check if we failed to open data file or not
		cout << "Operand2 File not found" ;
		return 0 ; // terminate program due to first error that the file is doesn't exist
	}
	
	OperationFileName = argv[4] ;
	OperationFile.open(OperationFileName);
	if (!OperationFile.is_open()) { // check if we failed to open data file or not
		cout << "Operation File not found" ;
		return 0 ; // terminate program due to first error that the file is doesn't exist
	}
	
	ModelTest.GenerateResults(&ExpectedFile,&OperationFile,&Operand1File,&Operand2File); 
	
	
	ExpectedFile.close();
	OperationFile.close();
	Operand1File.close();
	Operand2File.close();
	
	// print the results in the file 
	
	
	return 0 ;
}
