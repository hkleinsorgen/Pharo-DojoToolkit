"
Represents a function that is defined somewhere else
"
Class {
	#name : #DojoFunctionReference,
	#superclass : #JSAlias,
	#category : 'DojoToolkit-Core'
}

{ #category : #converting }
DojoFunctionReference >> asFunction [
]

{ #category : #converting }
DojoFunctionReference >> asFunction: aCollection [
]

{ #category : #converting }
DojoFunctionReference >> greaseString [

	^ self name.
]

{ #category : #printing }
DojoFunctionReference >> javascriptOn: aStream [ 

	aStream nextPutAll: self name.
]
