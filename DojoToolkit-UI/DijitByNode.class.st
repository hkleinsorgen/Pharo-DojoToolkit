Class {
	#name : #DijitByNode,
	#superclass : #DijitWidgetQuery,
	#category : 'DojoToolkit-UI'
}

{ #category : '*DojoToolkit-UI' }
DijitByNode class >> functionName [

	^ 'byNode'
]

{ #category : #events }
DijitByNode >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	self shouldNotImplement
]

{ #category : #events }
DijitByNode >> connectEvent: eventName method: functionOrName [ 

	self shouldNotImplement
]

{ #category : #accessing }
DijitByNode >> node: aNode [

	^ self setArguments: (Array with: aNode)
]
