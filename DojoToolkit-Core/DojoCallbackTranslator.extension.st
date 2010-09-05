Extension { #name : #DojoCallbackTranslator }

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> argumentFromSpecification: specification [ 

	^ specification at: 3
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> argumentTranslator [
	"  returns the first argument as string (#argument) "
	<registered>

	^ self registeredTranslatorAt: #argumentTranslator ifAbsentPut: [ DojoCallbackTranslator specifications: #( #( #value #string 0 nil ))].
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> arraySeparator [

	^ $,
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> asJavascript [
	" Returns the Javascript expression that creates the string that is added to requests "

	| stream |
	javascript isNil 
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
			javascript := stream contents
		].
	^ javascript
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> classMethodsChanged [

	RegisteredTranslators := nil
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> dataSeparator [

	^ $~
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> expressionFromSpecification: specification [ 

	^ specification at: 4
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> javascriptBlocks [
	" Blocks that write Javascript code for a single specification "

	javascriptBlocks isNil ifTrue: [ 
		javascriptBlocks := Dictionary new.
		javascriptBlocks
			at: #custom put: [ : stream : argument : expression | self writeJavascriptForArgument: argument expression: expression on: stream  ];
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

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> jsonConverter [

	^ Json
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> nameFromSpecification: specification [ 

	^ specification at: 1
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> pointSeparator [

	^ $@
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> raiseArgumentsSizeMismatch: i [ 

	DojoError signal: 'Expected ' , specifications size printString , ' arguments, got ' , i printString.
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> raiseUnknownType: type [ 

	^ DojoError signal: 'Unknown callback argument type: ' , type
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registeredTranslatorAt: aName ifAbsentPut: translatorBlock [
	" returns a registered translator. "

	^ self registeredTranslators at: aName ifAbsentPut: translatorBlock
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registeredTranslators [
	" Dictionary of associations name -> translator "
	
	RegisteredTranslators isNil ifTrue: [ RegisteredTranslators := Dictionary new ].
	^ RegisteredTranslators
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registryPragmas [
	<pragmas: #class>

	^ #(registered)
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> specifications [
	" Array of argument specifications.
	Each specification is an Array: 
		1. Name (= Dictionary key)
		2. Type
		3. Argument name or index 
		4. Javascript expression to get the value "

	^ specifications
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> specifications: anArray [ 

	^ ( self new ) specifications: anArray;
		yourself
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> specifications: anArray [ 

	specifications := anArray
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translateStringFrom: string [ 

	^ string
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translatedArrayFrom: string renderContext: renderContext  with: block [

	| collection readStream |
	collection := OrderedCollection new.
	readStream := string readStream.
	[ readStream atEnd ] whileFalse: [
		collection add: (block value: (readStream upTo: self arraySeparator) value: renderContext)
	].
	^ collection
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translatedJsonNFrom: string [ 

	^ self jsonConverter readFrom: string readStream
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translatedPassengerFrom: string renderContext: renderContext [ 

	^ renderContext callbacks passengerAt: string
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translatedPointFrom: string [ 

	| x y stream |
	stream := string readStream.
	x := Number readFrom: ( stream upTo: self pointSeparator ) readStream.
	y := Number readFrom: stream.
	^ x @ y
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> translationBlocks [
	" Blocks that create Smalltalk objects from a string created by the Javascript expression "

	translationBlocks isNil 
		ifTrue: 
		[	translationBlocks := Dictionary new.
			translationBlocks 
				at: #custom put: [: string : renderContext | string ];
				at: #string put: [: string : renderContext | self translateStringFrom: string ];
				at: #point put: [: string : renderContext | self translatedPointFrom: string ];
				at: #passenger put: [: string : renderContext | self translatedPassengerFrom: string renderContext: renderContext ];
				at: #json put: [: string : renderContext | self translatedJsonNFrom: string  ].
			translationBlocks copy keysAndValuesDo: [ : key : block |
				translationBlocks  at: (key, 'Array') asSymbol put: [ : string : renderContext | self translatedArrayFrom: string renderContext: renderContext  with: block ]
			].
		].
	^ translationBlocks
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> typeFromSpecification: specification [ 

	^ specification at: 2
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> writeJavascriptForArgument: argument expression: expression on: stream [ 

	self writeJavascriptForArgument: argument on: stream.
	expression notNil 
		ifTrue: 
		[	argument notNil 
				ifTrue: [ stream nextPut: $. ].
			stream nextPutAll: expression
		].
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> writeJavascriptForPointArgument: argument expression: expression on: stream [ 

	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: 'X+"'; nextPut: self pointSeparator; nextPutAll: '"+'.
	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: 'Y'.
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator >> writeJavascriptForStringArgument: argument expression: expression on: stream [

	stream nextPutAll: 'String('.
	self writeJavascriptForArgument: argument expression: expression on: stream.
	stream nextPutAll: ')'.
]
