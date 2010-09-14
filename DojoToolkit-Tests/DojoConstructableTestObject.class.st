Class {
	#name : #DojoConstructableTestObject,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Tests'
}

{ #category : #accessing }
DojoConstructableTestObject class >> functionName [

	^ 'dojox.testcases.TestObject'
]

{ #category : #properties }
DojoConstructableTestObject >> testString [
	
	^ self access: 'testString'
]

{ #category : #properties }
DojoConstructableTestObject >> testString: aString [
	
	self propertyAt: 'testString' put: aString
]
