"
Helper object that is involved in creating  Javascript object
"
Class {
	#name : #DojoConstructor,
	#superclass : #DojoAbstractQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
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
