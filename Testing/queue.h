

#ifndef QUEUE_H_
#define QUEUE_H_


typedef long ElemType ; // 32-bit

class queue {

private :

	struct Node {
	Node * Next ; // link the nodes
	ElemType Data ; // hold the data 
};

	Node * Front ; // point to the first item in the queue
	Node * Rear ; // point to the last item in the queue

public :

	queue (void); // constructor

	~queue (void); // destructor

	bool Enqueue (const ElemType item) ;

	ElemType Dequeue (void) ;

	ElemType FrontItem (void) ;

	bool IsEmpty (void) ;

};

#endif
