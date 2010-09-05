"
An object that has a constructor that is evaluated with the specified options
"
Class {
	#name : #DojoConstructableObject,
	#superclass : #DojoObject,
	#instVars : [
		'properties',
		'variable'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> arguments [

	^ Array with: self properties
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> createNewObject [
	" send by the constructor "

	self create
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> eventAt: aKey put: aHandler [ 

	^ self propertyAt: aKey put: aHandler asFunction
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> isNewObject [
	" true if this object has been created with 'new' "

	^ self owner notNil and: [ self owner constructsObjects ]
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> javascriptContentOn: aStream [ 

	self isNewObject 
		ifTrue: 
		[	aStream nextPutAll: self class functionName.
			JSStream encodeArguments: self arguments on: aStream
		]
		ifFalse: 
		[	self owner notNil 
				ifTrue: [ aStream javascript: self owner ]
		].
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> override: functionName with: aFunction [ 
	" for new objects, the override is added to the properties.
	this allows overriding multple functions (since Javascript does not support cascades) "

	self isNewObject
		ifTrue: [ self propertyAt: functionName  put: aFunction ]
		ifFalse: [ super override: functionName with: aFunction  ].
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> properties [

	^ properties ifNil: [ properties := GRSmallDictionary new ]
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> propertyAt: aKey put: aValue [ 

	^ self properties at: aKey put: aValue
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> requiredPackages [

	^ Array with: self class functionName
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> variable [

	^ variable
]

{ #category : '*DojoToolkit-Core' }
DojoConstructableObject >> variable: aVariable [ 

	variable := aVariable.
]
