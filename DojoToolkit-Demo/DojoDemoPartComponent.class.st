Class {
	#name : #DojoDemoPartComponent,
	#superclass : #WAComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #accessing }
DojoDemoPartComponent class >> isAbstract [

	^ self = DojoDemoPartComponent
]

{ #category : #accessing }
DojoDemoPartComponent >> category [

	self subclassResponsibility
]

{ #category : #rendering }
DojoDemoPartComponent >> renderContentOn: html [ 

	self renderTitleOn: html.
	self renderExplanationOn: html.
	html paragraph: [ self renderDemoOn: html ].
	self renderDemoSourceOn: html
]

{ #category : #rendering }
DojoDemoPartComponent >> renderDemoOn: html [
]

{ #category : #rendering }
DojoDemoPartComponent >> renderDemoSourceOn: html [ 

	self sourceSelectors notEmpty 
		ifTrue: 
		[	self title: 'Source' on: html.
			html paragraph: [ self sourceSelectors do: [: selector | self renderSourceOf: selector on: html ]]
		].
]

{ #category : #rendering }
DojoDemoPartComponent >> renderExplanationOn: html [
]

{ #category : #rendering }
DojoDemoPartComponent >> renderSourceBodyFrom: readStream on: html [ 

	| formattedSource |
	formattedSource := String new writeStream.
	[ readStream atEnd ] whileFalse: 
		[ | char |
			char := readStream next.
			char = Character tab 
				ifTrue: [ formattedSource nextPutAll: '  ' ]
				ifFalse: [ formattedSource nextPut: char ]
		].
	html div class: 'code';
		with: [ html preformatted: [ html text: formattedSource contents ]]
]

{ #category : #rendering }
DojoDemoPartComponent >> renderSourceOf: selector on: html [ 

	| selectorString source readStream |
	( self class includesSelector: selector ) 
		ifFalse: [ ^ self ].
	source := self class sourceCodeAt: selector.
	source notNil 
		ifTrue: 
		[	readStream := source readStream.
			selectorString := self class name , '>>' , ( readStream upTo: Character cr ) , ( String with: Character cr ).
			html paragraph: 
				[	html dojoTitlePane dojoConfiguration: [: pane | pane title: selectorString ];
						with: [ self renderSourceBodyFrom: readStream on: html ]
				]
		].
]

{ #category : #rendering }
DojoDemoPartComponent >> renderTitleOn: html [ 

	( html heading )
		class: 'demo';
		level2;
		with: self title.
]

{ #category : #accessing }
DojoDemoPartComponent >> sortKey [

	^ self title
]

{ #category : #accessing }
DojoDemoPartComponent >> sourceSelectors [

	^ #(#renderDemoOn:)
]

{ #category : #accessing }
DojoDemoPartComponent >> title [

	self subclassResponsibility
]

{ #category : #rendering }
DojoDemoPartComponent >> title: title on: html [ 

	html heading level3;
		with: title.
]
