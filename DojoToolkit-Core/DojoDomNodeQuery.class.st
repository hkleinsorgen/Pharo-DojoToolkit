"
Query that selects a single DOM node
"
Class {
	#name : #DojoDomNodeQuery,
	#superclass : #DojoAbstractQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : #manipulation }
DojoDomNodeQuery >> attributeAt: aKey put: aValue [

	^ self dojo attr: self name: aKey value: aValue
]

{ #category : #events }
DojoDomNodeQuery >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	^ self dojo connect: self event: eventName context: contextObject method: functionOrName dontFix: dontFix
]

{ #category : #events }
DojoDomNodeQuery >> connectEvent: eventName method: functionOrName [ 

	^ self dojo connect: self event: eventName method: functionOrName
]

{ #category : #events }
DojoDomNodeQuery >> enclosingWidget [
	" convenvience: returns the enclosing widget "

	^ self dojoUI enclosingWidget: self
]
