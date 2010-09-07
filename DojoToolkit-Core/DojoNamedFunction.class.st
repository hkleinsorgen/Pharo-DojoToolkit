Class {
	#name : #DojoNamedFunction,
	#superclass : #JSFunction,
	#instVars : [
		'name'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #printing }
DojoNamedFunction >> javascriptContentOn: aStream [
	aStream nextPutAll: 'function '.
	aStream nextPutAll: self name.
	aStream nextPutAll: ' ('.
	self arguments do: [ :each | aStream nextPutAll: each ] separatedBy: [ aStream nextPut: $, ].
	aStream nextPutAll: '){'.
	statements isEmpty ifFalse:
			[ statements allButLast do:
					[ :each | 
					aStream
						javascript: each;
						nextPut: $; ].
			self return ifTrue: [ aStream nextPutAll: 'return ' ].
			aStream javascript: statements last ].
	aStream nextPut: $}
]

{ #category : #accessing }
DojoNamedFunction >> name [

	^ name
]

{ #category : #accessing }
DojoNamedFunction >> name: aName [ 

	name := aName.
]
