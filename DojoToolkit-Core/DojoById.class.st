"
Select a DOM node by id 
"
Class {
	#name : #DojoById,
	#superclass : #DojoDomNodeQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoById class >> functionName [

	^ 'byId'
]

{ #category : #query }
DojoById >> id: aString [ 
	"Select a DOM node by id "

	^ self setArguments: (Array with: aString )
]

{ #category : #accessing }
DojoById >> nodeId [

	^ self arguments first
]
