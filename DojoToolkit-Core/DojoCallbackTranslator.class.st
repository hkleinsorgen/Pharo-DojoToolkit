"
The translator generates a Javascript expression that is evaluated  on the client side and returns a data string.The data string is then translated into a Smalltalk object.
The translator provides some custom marshaling routines (similar to the code found in JQuery-UI), especially to marshal passengers.
"
Class {
	#name : #DojoCallbackTranslator,
	#superclass : #Object,
	#instVars : [
		'specifications',
		'javascriptBlocks',
		'translationBlocks',
		'javascriptObject'
	],
	#classVars : [
		'RegisteredTranslators'
	],
	#classInstVars : [
		'jsonConverter'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #translators }
DojoCallbackTranslator class >> argumentTranslator [
	"  returns the first argument as string (#argument) "
	<registered>

	^ self translatorNamed: #argumentTranslator ifAbsentPut: [ DojoCallbackTranslator specifications: #( #( #value #string 0 nil ))].
]

{ #category : #compiling }
DojoCallbackTranslator class >> classMethodsChanged [

	self flush
]

{ #category : #'registry - private' }
DojoCallbackTranslator class >> flush [

	RegisteredTranslators := nil
]

{ #category : #JSON }
DojoCallbackTranslator class >> jsonConverter [
	" a class that supports unamrshaling JSON strings - must understand #readFrom: "

	^ jsonConverter
]

{ #category : #JSON }
DojoCallbackTranslator class >> jsonConverter: aConverter [
	" a class that supports unamrshaling JSON strings - must understand #readFrom: "

	jsonConverter := aConverter
]

{ #category : #'registry - private' }
DojoCallbackTranslator class >> registeredTranslators [
	" Dictionary of associations name -> translator "
	
	RegisteredTranslators isNil ifTrue: [ RegisteredTranslators := Dictionary new ].
	^ RegisteredTranslators
]

{ #category : #'registry - private' }
DojoCallbackTranslator class >> registryPragmas [
	<pragmas: #class>

	^ #(registered)
]

{ #category : #'instance creation' }
DojoCallbackTranslator class >> specifications: anArray [ 

	^ ( self new ) specifications: anArray;
		yourself
]

{ #category : #'registry - private' }
DojoCallbackTranslator class >> translatorNamed: aName ifAbsentPut: translatorBlock [
	" returns a registered translator singleton "

	^ self registeredTranslators at: aName ifAbsentPut: translatorBlock
]

{ #category : #private }
DojoCallbackTranslator >> argumentFromSpecification: specification [ 

	^ specification at: 3
]

{ #category : #private }
DojoCallbackTranslator >> arraySeparator [

	^ $,
]

{ #category : #translation }
DojoCallbackTranslator >> asCollection: aString renderContext: aRenderContext [ 
	" create an sequencable collection (same order as the specifications) with translated objects from the string created by the javascript expression "

	| translatedValues |
	translatedValues := Array new: self specifications size.
	self 
		translateToSmalltalk: aString
		renderContext: aRenderContext
		addBlock: [: i : value | translatedValues at: i put: value ].
	^ translatedValues
]

{ #category : #translation }
DojoCallbackTranslator >> asSmalltalkObject: aString renderContext: aRenderContext [ 
	" create a dictionary with translated objects from the string created by the javascript expression"

	| translatedValues |
	translatedValues := Dictionary new.
	self 
		translateToSmalltalk: aString
		renderContext: aRenderContext
		addBlock: [: i : value | translatedValues at: ( self nameFromSpecification: ( specifications at: i )) put: value ].
	^ translatedValues
]

{ #category : #private }
DojoCallbackTranslator >> dataSeparator [

	^ $~
]

{ #category : #private }
DojoCallbackTranslator >> expressionFromSpecification: specification [ 

	^ specification at: 4
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> javascriptBlocks [
	" Blocks that write Javascript code for a single specification "

	javascriptBlocks isNil ifTrue: [ 
		javascriptBlocks := Dictionary new.
		javascriptBlocks
			at: #custom put: [ : stream : argument : expression | self writeJavascriptForArgument: argument expression: expression on: stream  ];
			at: #boolean put: [ : stream : argument : expression | self writeJavascriptForArgument: argument expression: expression on: stream  ];
			at: #string put: [ : stream : argument : expression | self writeJavascriptForStringArgument: argument expression: expression on: stream  ];
			at: #point put: [ : stream : argument : expression | self writeJavascriptForPointArgument: argument expression: expression on: stream  ];
			at: #passenger put: [ : stream : argument : expression | self writeJavascriptForArgument: argument expression: expression on: stream  ];
			at: #json put: [ : stream : argument : expression | self writeJavascriptForJSONArgument: argument expression: expression on: stream  ].
			javascriptBlocks copy keysAndValuesDo: [ : key : block |
				javascriptBlocks  at: (key, 'Array') asSymbol put: block
			].
	].
	^ javascriptBlocks
]

{ #category : #translation }
DojoCallbackTranslator >> javascriptObject [
	" Returns the Javascript expression that creates the string that is added to requests "

	| stream |
	javascriptObject isNil 
		ifTrue: 
		[	self specifications isEmpty 
				ifTrue: [ DojoError signal: 'Callback translator has no specifications' ].
			stream := JSStream new.
			self specifications 
				do: 
				[: specification | | block type |
					type := self typeFromSpecification: specification.
					block := self javascriptBlocks at: type ifAbsent: [ self raiseUnknownType: type ].
					block value: stream value: ( self argumentFromSpecification: specification ) value: ( self expressionFromSpecification: specification )
				]
				separatedBy: [ stream nextPutAll: '+"'; nextPut: self dataSeparator; nextPutAll: '"+' ].
			javascriptObject := stream 
		].
	^ javascriptObject
]

{ #category : #translation }
DojoCallbackTranslator >> javascriptOn: aStream [

	self javascriptObject javascriptOn: aStream
]

{ #category : #private }
DojoCallbackTranslator >> jsonConverter [

	| jsonConverter |
	jsonConverter := self class jsonConverter.
	jsonConverter isNil ifTrue: [ DojoError raiseSignal: 'No JSON converter configured' ].
	^ jsonConverter
]

{ #category : #private }
DojoCallbackTranslator >> nameFromSpecification: specification [ 

	^ specification at: 1
]

{ #category : #private }
DojoCallbackTranslator >> pointSeparator [

	^ $@
]

{ #category : #private }
DojoCallbackTranslator >> raiseArgumentsSizeMismatch: i [ 

	DojoError signal: 'Expected ' , specifications size printString , ' arguments, got ' , i printString.
]

{ #category : #private }
DojoCallbackTranslator >> raiseUnknownType: type [ 

	^ DojoError signal: 'Unknown callback argument type: ' , type
]

{ #category : #accessing }
DojoCallbackTranslator >> specifications [
	" Array of argument specifications.
	Each specification is an Array: 
		1. Name (= Dictionary key)
		2. Type
		3. Argument name or index 
		4. Javascript expression to get the value "

	^ specifications
]

{ #category : #accessing }
DojoCallbackTranslator >> specifications: anArray [ 

	specifications := anArray
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translateBooleanFrom: string [ 

	^ string = 'true'
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translateStringFrom: string [ 

	^ string
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translateToSmalltalk: aString renderContext: aRenderContext addBlock: addBlock [ 
	" add all translated objects from the string created by the javascript expression"

	| readStream i |
	readStream := aString readStream.
	i := 0.
	[ | dataString specification value type |
		i := i + 1.
		specification := specifications at: i.
		dataString := readStream upTo: self dataSeparator.
		type := self typeFromSpecification: specification.
		value := ( self translationBlocks at: type ifAbsent: [ self raiseUnknownType: type ]) value: dataString value: aRenderContext.
		addBlock value: i value: value.
		i < specifications size 
	] whileTrue.
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translatedArrayFrom: string renderContext: renderContext  with: block [

	| collection readStream |
	collection := OrderedCollection new.
	readStream := string readStream.
	[ readStream atEnd ] whileFalse: [
		collection add: (block value: (readStream upTo: self arraySeparator) value: renderContext)
	].
	^ collection
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translatedJsonFrom: string [ 

	^ self jsonConverter readFrom: string readStream
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translatedPassengerFrom: string renderContext: renderContext [ 

	^ renderContext callbacks passengerAt: string
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translatedPointFrom: string [ 

	| x y stream |
	stream := string readStream.
	x := Number readFrom: ( stream upTo: self pointSeparator ) readStream.
	y := Number readFrom: stream.
	^ x @ y
]

{ #category : #'translation-smalltalk' }
DojoCallbackTranslator >> translationBlocks [
	" Blocks that create Smalltalk objects from a string created by the Javascript expression "

	translationBlocks isNil 
		ifTrue: 
		[	translationBlocks := Dictionary new.
			translationBlocks 
				at: #custom put: [: string : renderContext | string ];
				at: #boolean put: [: string : renderContext | self translateBooleanFrom: string ];
				at: #string put: [: string : renderContext | self translateStringFrom: string ];
				at: #point put: [: string : renderContext | self translatedPointFrom: string ];
				at: #passenger put: [: string : renderContext | self translatedPassengerFrom: string renderContext: renderContext ];
				at: #json put: [: string : renderContext | self translatedJsonFrom: string  ].
			translationBlocks copy keysAndValuesDo: [ : key : block |
				translationBlocks  at: (key, 'Array') asSymbol put: [ : string : renderContext | self translatedArrayFrom: string renderContext: renderContext  with: block ]
			].
		].
	^ translationBlocks
]

{ #category : #private }
DojoCallbackTranslator >> typeFromSpecification: specification [ 

	^ specification at: 2
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> writeJavascriptForArgument: argument expression: expression on: stream [ 

	self writeJavascriptForArgument: argument on: stream.
	expression notNil 
		ifTrue: 
		[	argument notNil 
				ifTrue: [ stream nextPut: $. ].
			stream nextPutAll: expression
		].
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> writeJavascriptForArgument: argument on: stream [ 

	argument notNil 
		ifTrue: 
		[	argument isInteger 
				ifTrue: 
				[	stream nextPutAll: 'arguments['.
					argument printOn: stream.
					stream nextPutAll: ']'
				]
				ifFalse: [ stream nextPutAll: argument ]
		].
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> writeJavascriptForJSONArgument: argument expression: expression on: stream [ 

	stream nextPutAll: 'JSON.stringify('.
	self writeJavascriptForArgument: argument on: stream.
	expression notNil 
		ifTrue: 
		[	argument notNil 
				ifTrue: [ stream nextPut: $. ].
			stream nextPutAll: expression
		].
	stream nextPutAll: ')'.
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> writeJavascriptForPointArgument: argument expression: expression on: stream [ 

	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: 'X+"'; nextPut: self pointSeparator; nextPutAll: '"+'.
	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: 'Y'.
]

{ #category : #'translation-javascript' }
DojoCallbackTranslator >> writeJavascriptForStringArgument: argument expression: expression on: stream [

	stream nextPutAll: 'String('.
	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: ')'.
]
