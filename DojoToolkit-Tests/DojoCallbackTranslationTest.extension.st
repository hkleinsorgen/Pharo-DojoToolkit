Extension { #name : #DojoCallbackTranslationTest }

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testAsCollection [

	| translator values id point dataSep pointSep javascriptString |
	translator := self translatorFor: #(  
		#( #origin #point #event 'layer')
		#(#id #string #event 'id' )
	).
	id := 'idTest'.
	point := 4 @ 2.
	pointSep := String with: translator pointSeparator.
	dataSep := String with: translator dataSeparator.
	javascriptString := point x printString , pointSep , point y printString, dataSep, 'idTest'.
	[	values := translator asCollection: javascriptString renderContext: self renderContext.
		self assert: values size = 2.
		self assert: ( values at: 1) = point.
		self assert: ( values at: 2) = id.
	] on: DojoError do: [: ex | self assert: false description: ex description ].
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testAsDictionary [

	| translator values id point dataSep pointSep javascriptString |
	translator := self translatorFor: #( 
		#( #id #string #event 'id' ) 
		#( #origin #point #event 'layer' )
	).
	id := 'idTest'.
	point := 4 @ 2.
	dataSep := String with: translator dataSeparator.
	pointSep := String with: translator pointSeparator.
	javascriptString := 'idTest' , dataSep ,  point x printString , pointSep , point y printString.
	[	values := translator asSmalltalkObject: javascriptString renderContext: self renderContext.
		self assert: values size = 2.
		self assert: ( values at: #id ifAbsent: [ nil ]) = id.
		self assert: ( values at: #origin ifAbsent: [ nil ]) = point
	] on: DojoError do: [: ex | self assert: false description: ex description ].
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testCustomJavascript [

	| translator |
	translator := self translatorFor: #((id custom nil  'encodeURI(String(event))')).
	self assert: translator
		equals: 'encodeURI(String(event))'
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testEmptyPassengerArraySmalltalk [

	| translator values valueArray |
	translator := self translatorFor: #( #( #id #passengerArray #event 'foo' )).
	values := translator asSmalltalkObject: '' renderContext: self renderContext.
	self assert: values size = 1.
	valueArray := values at: #id ifAbsent: [ nil ].
	self assert: valueArray notNil.
	self assert: (valueArray isEmpty)
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testNonArgumentExpressionJavascript [

	| translator |
	translator := self translatorFor: #((foo string nil 'event.data')).
	self assert: translator
		equals: 'String(event.data)'
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testPassengerArraySmalltalk [

	| translator renderContext values passenger1 id1 passenger2 id2 valueArray |
	translator := self translatorFor: #( #( #id #passengerArray #event 'foo' )).
	renderContext := self renderContext.
	renderContext callbacks registerPassenger: ( passenger1 := Array with: 42 ) named: ( id1 := 'id42' ).
	renderContext callbacks registerPassenger: ( passenger2 := Array with: 1013 ) named: ( id2 := 'id1013' ).
	values := translator asSmalltalkObject: id1, (String with: translator arraySeparator), id2 renderContext: renderContext.
	self assert: values size = 1.
	valueArray := values at: #id ifAbsent: [ nil ].
	self assert: valueArray notNil.
	self assert: (valueArray asArray = (Array with: passenger1 with: passenger2))
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testPassengerJavascript [

	| translator |
	translator := self translatorFor: #((id passenger event 'target.id')).
	self assert: translator
		equals: 'event.target.id'
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testPassengerSmalltalk [

	| translator renderContext passenger id values |
	translator := self translatorFor: #( #( #id #passenger #event 'foo' )).
	renderContext := self renderContext.
	renderContext callbacks registerPassenger: ( passenger := Array with: 42 ) named: ( id := 'id42' ).
	values := translator asSmalltalkObject: id renderContext: renderContext.
	self assert: values size = 1.
	self assert: ( values at: #id ifAbsent: [ nil ]) == passenger.
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testPointJavascript [

	| translator |
	translator := self translatorFor: #((eventLayer point event layer)).
	self assert: translator
		equals: 'event.layerX+"', (String with: translator pointSeparator), '"+event.layerY'
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testPointSmalltalk [

	| translator values |
	translator := self translatorFor: #( #( #eventLayer #point #event #layer )).
	values := translator asSmalltalkObject: ( '1' , ( String with: translator pointSeparator )) , '2' renderContext: self renderContext.
	self assert: values size = 1.
	self assert: ( values at: #eventLayer ifAbsent: [ nil ]) = ( 1 @ 2 ).
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testStringJavascript [

	| translator |
	translator := self translatorFor: #((id string event 'target.id')).
	self assert: translator
		equals: 'String(event.target.id)'
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testStringSmalltalk [

	| translator values string |
	translator := self translatorFor: #( #( #message #string #event 'foo' )).
	values := translator asSmalltalkObject: ( string := 'test passed' ) renderContext: self renderContext.
	self assert: values size = 1.
	self assert: ( values at: #message ifAbsent: [ nil ]) = string.
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> testUnknownType [

	| translator |
	translator := self translatorFor: #( #( #eventLayer #foobar #event #layer )).
	[	translator asJavascript.
		self assert: false
	] on: DojoError do: [: ex | ].
	[	translator asSmalltalkObject: 'test' renderContext: self renderContext.
		self assert: false
	] on: DojoError do: [: ex | ].
]

{ #category : '*DojoToolkit-Tests' }
DojoCallbackTranslationTest >> translatorFor: specifications [ 

	^ DojoCallbackTranslator specifications: specifications
]
