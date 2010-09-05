Extension { #name : #DojoConstructableTestObject }

{ #category : '*DojoToolkit-Tests' }
DojoConstructableTestObject classSide >> functionName [

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
