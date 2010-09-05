Class {
	#name : #DojoConstructor,
	#superclass : #DojoNodeQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoConstructor class >> functionName [

	self shouldNotImplement
]

{ #category : #events }
DojoConstructor >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	self shouldNotImplement
]

{ #category : #events }
DojoConstructor >> connectEvent: eventName method: functionOrName [ 

	self shouldNotImplement
]

{ #category : #private }
DojoConstructor >> constructsObjects [

	^ true
]

{ #category : #creation }
DojoConstructor >> create: aDojoObjectClass [ 

	^ ( super create: aDojoObjectClass ) createNewObject
]

{ #category : #printing }
DojoConstructor >> javascriptContentOn: aStream [
]
