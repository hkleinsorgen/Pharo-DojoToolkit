Class {
	#name : #DojoStore,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Data'
}

{ #category : #accessing }
DojoStore class >> functionName [

	^ nil
]

{ #category : #private }
DojoStore >> autoCompleteDataForStrings: strings searchAttribute: searchAttribute [

	| items data  |
	items := strings collect: 
			[: className |
				Dictionary new at: searchAttribute put: className;
					yourself
			].
	data := Dictionary new.
	data at: 'items' put: items.
	data at: 'identifier' put: searchAttribute.
	data at: 'label' put: searchAttribute.
	^ data asJson
]

{ #category : #private }
DojoStore >> respondAutoCompleteStrings: strings searchAttribute: searchAttribute [

	self requestContext respond: 
		[: response | | data |
			data := self autoCompleteDataForStrings: strings searchAttribute: searchAttribute.
			response document: data mimeType: WAMimeType textJavascript
		].
]
