Extension { #name : #DojoDemoPartComponent }

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> category [

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent classSide >> isAbstract [

	^ self = DojoDemoPartComponent
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderContentOn: html [ 

	self renderTitleOn: html.
	self renderExplanationOn: html.
	self renderDemoOn: html.
	self renderDemoSourceOn: html
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderDemoOn: html [
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderDemoSourceOn: html [ 

	self renderSourceSelectors notEmpty 
		ifTrue: 
		[	html heading level3;
				with: 'Source'.
			html paragraph: [ self renderSourceSelectors do: [: selector | self renderSourceOf: selector on: html ]]
		].
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderExplanationOn: html [
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderSourceOf: selector on: html [ 

	html div class: 'code';
		with: [ self renderUndecoratedSourceOf: selector on: html ].
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderSourceSelectors [

	^ #(#renderDemoOn:)
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderTitleOn: html [ 

	( html heading )
		class: 'demo';
		level2;
		with: self title.
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> renderUndecoratedSourceOf: selector on: html [ 

	| source readStream formattedSource |
	source := self class sourceCodeAt: selector.
	source notNil 
		ifTrue: 
		[	html preformatted: 
				[	readStream := source readStream.
					html span class: 'selector';
						with: self class name , '>>' , ( readStream upTo: Character cr ) , ( String with: Character cr ).
					formattedSource := String new writeStream.
					[ readStream atEnd ] whileFalse: 
						[ | char |
							char := readStream next.
							char = Character tab 
								ifTrue: [ formattedSource nextPutAll: '  ' ]
								ifFalse: [ formattedSource nextPut: char ]
						].
					html text: formattedSource contents
				]
		].
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> sortKey [

	^ self title
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoPartComponent >> title [

	self subclassResponsibility
]
