

#ifndef FQUEUE_H_
#define FQUEUE_H_

typedef float fElemType ; // 32-bit

class fqueue {

private :

	struct Node {
	Node * Next ; // link the nodes
	fElemType Data ; // hold the data 
};

	Node * Front ; // point to the first item in the queue
	Node * Rear ; // point to the last item in the queue

public :

	fqueue (void); // constructor

	~fqueue (void); // destructor

	bool Enqueue (const fElemType item) ;

	fElemType Dequeue (void) ;

	fElemType FrontItem (void) ;

	bool IsEmpty (void) ;

};

#endif
