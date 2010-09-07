"
Select a DOM node by id 
"
Class {
	#name : #DojoById,
	#superclass : #DojoNodeQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoById class >> functionName [

	^ 'byId'
]

{ #category : #events }
DojoById >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	^ self dojo connect: self event: eventName context: contextObject method: functionOrName dontFix: dontFix
]

{ #category : #events }
DojoById >> connectEvent: eventName method: functionOrName [ 

	^ self dojo connect: self event: eventName method: functionOrName
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

{ #category : #events }
DojoById >> subscribe: topic method: method [ 
	"  Provide widget-specific analog to dojo.subscribe, except with the implicit use of this widget as the target object "

	self call: 'subscribe' withArguments: (Array with: topic with: method asFunction)
]
