Class {
	#name : #DijitByNode,
	#superclass : #DijitWidgetQuery,
	#category : 'DojoToolkit-UI'
}

{ #category : '*DojoToolkit-UI' }
DijitByNode class >> functionName [

	^ 'byNode'
]

{ #category : '*DojoToolkit-UI' }
DijitByNode >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	self shouldNotImplement
]

{ #category : '*DojoToolkit-UI' }
DijitByNode >> connectEvent: eventName method: functionOrName [ 

	self shouldNotImplement
]

{ #category : '*DojoToolkit-UI' }
DijitByNode >> node: aNode [

	^ self setArguments: (Array with: aNode)
]
