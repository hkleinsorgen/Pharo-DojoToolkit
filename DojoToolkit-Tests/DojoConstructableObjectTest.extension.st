Extension { #name : #DojoConstructableObjectTest }

{ #category : '*DojoToolkit-Tests' }
DojoConstructableObjectTest >> testConstructorWithProperty [

	self 
		assert: ((self dojo new: DojoConstructableTestObject) testString: 'foo')
		equals: 'new ', DojoConstructableTestObject functionName, '({', (self keyQuote: 'testString'), ':"foo"})'.
]

{ #category : '*DojoToolkit-Tests' }
DojoConstructableObjectTest >> testEmptyConstructor [

	self 
		assert: (self dojo new: DojoConstructableTestObject) 
		equals: 'new ', DojoConstructableTestObject functionName, '({})'.
]

{ #category : '*DojoToolkit-Tests' }
DojoConstructableObjectTest >> testRequire [
	" assert that a 'require:'-statement has been added for the object "

	self 
		scriptsAdddedBy: [: dojo | dojo create: DojoConstructableTestObject ]
		do: 
		[: newLoadScripts : scriptGenerator|
			self assert: newLoadScripts isEmpty.
			self assert: scriptGenerator globalScripts size = 1.
			self assert: scriptGenerator globalScripts first equals: (Dojo functionName , '.require("', DojoConstructableTestObject functionName, '")')
		].
]
