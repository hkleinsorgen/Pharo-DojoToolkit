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

{ #category : #accessing }
DojoConstructableObject class >> requiredPackages [

	^ Array with: self functionName
]

{ #category : #accessing }
DojoConstructableObject >> arguments [

	^ Array with: self properties
]

{ #category : #private }
DojoConstructableObject >> createNewObject [
	" send by the constructor "

	self create
]

{ #category : #private }
DojoConstructableObject >> eventAt: aKey put: aHandler [ 

	^ self propertyAt: aKey put: aHandler asFunction
]

{ #category : #private }
DojoConstructableObject >> isNewObject [
	" true if this object is new, not a part of a statement " 

	^ self owner isNil or: [ self owner constructsObjects ]
]

{ #category : #printing }
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

{ #category : #accessing }
DojoConstructableObject >> override: functionName with: aFunction [ 
	" for new objects, the override is added to the properties.
	this allows overriding multple functions (since Javascript does not support cascades) "

	self isNewObject
		ifTrue: [ self propertyAt: functionName  put: aFunction ]
		ifFalse: [ super override: functionName with: aFunction  ].
]

{ #category : #private }
DojoConstructableObject >> properties [

	^ properties ifNil: [ properties := GRSmallDictionary new ]
]

{ #category : #private }
DojoConstructableObject >> propertyAt: aKey put: aValue [ 

	^ self properties at: aKey put: aValue
]

{ #category : #accessing }
DojoConstructableObject >> requiredPackages [

	^ self class requiredPackages
]

{ #category : #private }
DojoConstructableObject >> variable [

	^ variable
]

{ #category : #private }
DojoConstructableObject >> variable: aVariable [ 

	variable := aVariable.
]
