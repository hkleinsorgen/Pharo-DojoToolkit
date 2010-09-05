"
 Returns a list of DOM nodes based on a CSS selector 
"
Class {
	#name : #DojoQuery,
	#superclass : #DojoNodeList,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoQuery class >> functionName [

	^ 'query'
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> && anotherQuery [
	" combine the two queries "

	(anotherQuery owner isNil or: [ anotherQuery owner = self owner ])	
		ifTrue: [ 	self setArguments: self arguments, anotherQuery arguments ]
		ifFalse: [ DojoError signal: 'Cannot combine queries of different owners' ]
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> any [
	" any element "

	^ self queryString: '*'
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> attribute: attributeName [
	" Elements with the given attribute "

	^ self queryString: '[', attributeName greaseString, ']'
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> attribute: attributeName value: attributeValue [
	" Elements with the given attribute value "

	^ self queryString: '[', attributeName greaseString, '="', attributeValue greaseString, '"]'
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> class: aString [
	" Elements with the given class "

	^ self queryString: '.', aString greaseString
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: typeString [
	" any element of the type "

	^ self queryString: typeString greaseString
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName [
	" Elements with the given attribute "

	^ self element: elementName attribute: attributeName operator: nil value: nil
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName beginsWith: attributeValue [
	" Elements whose attribute value begins with the substring "

	^ self element: elementName attribute: attributeName operator: '^=' value: attributeValue
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName contains: attributeValue [
	" Elements whose attribute value contains the substring "

	^ self element: elementName attribute: attributeName operator: '*=' value: attributeValue
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName endsWith: attributeValue [
	" Elements whose attribute value ends with the substring "

	^ self element: elementName attribute: attributeName operator: '$=' value: attributeValue
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName operator: operator value: attributeValue [ 

	| stream |
	stream := String new writeStream.
	stream nextPutAll: elementName.
	stream nextPutAll: '['.
	stream nextPutAll: attributeName.
	operator notNil 
		ifTrue: 
		[	stream nextPutAll: operator.
			stream nextPut: $".
			stream nextPutAll: attributeValue.
			stream nextPut: $".
		].
	stream nextPutAll: ']'.
	self queryString: stream contents
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> element: elementName attribute: attributeName value: attributeValue [
	" Elements with the given attribute value "

	^ self element: elementName attribute: attributeName operator: '=' value: attributeValue
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> id: aString [ 
	" an Element with ID "

	^ self queryString: '#', aString greaseString
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> query: anObject [
	"Convenience method to populate the query "
	
	anObject isSymbol
		ifTrue: [ ^ self id: anObject ].
	^ self queryString: anObject
]

{ #category : '*DojoToolkit-Core' }
DojoQuery >> queryString: aCssSelectorString [ 
	" Returns a list of DOM nodes based on the CSS selector "

	^ self setArguments: (Array with: (aCssSelectorString greaseString))
]
