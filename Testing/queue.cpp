
#include "queue.h"

#include "stddef.h"

queue::queue(void) {

	// prepare pre-initialized conditions

	Rear = NULL ; // hold the index of the next place to be inserted

	Front = NULL ; //  the index of the empty place
}

queue::~queue(void) {

	// delete allocated nodes
	//Node * DeleteNode ;
	//while ( Front != NULL ) {
		
	//	DeleteNode = Front ;  
	//	Front = Front -> Next ;
	//	delete DeleteNode ;
	//}
}


bool queue::Enqueue (const ElemType item) {

	Node * NewNode ;
	
	NewNode = new Node ;
	
	if ( NewNode == NULL ) {
		return false ; // falied to allocate new node
	} 
	
	if ( Front == NULL ) { // if the queue is empty
		Front = NewNode ; 
	}
	
	NewNode -> Data = item ; // store data
	NewNode -> Next = NULL ; // end node 
	
	if (Rear == NULL ) { 
		Rear = NewNode ;
	}
	else {
		Rear -> Next = NewNode ;
		Rear = NewNode ;
	}
	
	return true ; // enqueue operation has succesfully done 
}

ElemType queue::Dequeue(void) {

	// the user should check if the queue is empty or not
	
	ElemType Data ; // temp var to fetch data
	Node * DeleteNode ; // to delete dequeued node
	
	Data = Front->Data ; // get data in the front place
	DeleteNode = Front ; // store node to be deleted later
	Front = Front -> Next ; // move to next node
	
	delete DeleteNode ; // delete node
	
	return Data ; // return data 
}


ElemType queue::FrontItem (void) {

	return Front->Data ; // return first item after the empty place
}

bool queue::IsEmpty (void) {

	if ( Front == NULL ) // if the Front is NULL
	{
		return true ;
	}
	else {
		return false ; // unless that the queue isn't empty
	}
}

