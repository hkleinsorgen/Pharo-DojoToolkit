Class {
	#name : #DojoConstructor,
	#superclass : #DojoNodeQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoConstructor class >> functionName [

	self shouldNotImplement
]

{ #category : '*DojoToolkit-Core' }
DojoConstructor >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	self shouldNotImplement
]

{ #category : '*DojoToolkit-Core' }
DojoConstructor >> connectEvent: eventName method: functionOrName [ 

	self shouldNotImplement
]

{ #category : '*DojoToolkit-Core' }
DojoConstructor >> constructsObjects [

	^ true
]

{ #category : '*DojoToolkit-Core' }
DojoConstructor >> create: aDojoObjectClass [ 

	^ ( super create: aDojoObjectClass ) createNewObject
]

{ #category : '*DojoToolkit-Core' }
DojoConstructor >> javascriptContentOn: aStream [
]
