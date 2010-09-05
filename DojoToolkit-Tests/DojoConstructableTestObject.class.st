Class {
	#name : #DojoConstructableTestObject,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Tests'
}

{ #category : '*DojoToolkit-Tests' }
DojoConstructableTestObject class >> functionName [

	^ 'dojox.testcases.TestObject'
]

{ #category : '*DojoToolkit-Tests' }
DojoConstructableTestObject >> testString [
	
	^ self access: 'testString'
]

{ #category : '*DojoToolkit-Tests' }
DojoConstructableTestObject >> testString: aString [
	
	self propertyAt: 'testString' put: aString
]
