Class {
	#name : #DojoDemoPartComponent,
	#superclass : #WAComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
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
	self renderDemoOn: html.
	self renderDemoSourceOn: html
]

{ #category : #rendering }
DojoDemoPartComponent >> renderDemoOn: html [
]

{ #category : #rendering }
DojoDemoPartComponent >> renderDemoSourceOn: html [ 

	self renderSourceSelectors notEmpty 
		ifTrue: 
		[	html heading level3;
				with: 'Source'.
			html paragraph: [ self renderSourceSelectors do: [: selector | self renderSourceOf: selector on: html ]]
		].
]

{ #category : #rendering }
DojoDemoPartComponent >> renderExplanationOn: html [
]

{ #category : #rendering }
DojoDemoPartComponent >> renderSourceOf: selector on: html [ 

	html div class: 'code';
		with: [ self renderUndecoratedSourceOf: selector on: html ].
]

{ #category : #rendering }
DojoDemoPartComponent >> renderSourceSelectors [

	^ #(#renderDemoOn:)
]

{ #category : #rendering }
DojoDemoPartComponent >> renderTitleOn: html [ 

	( html heading )
		class: 'demo';
		level2;
		with: self title.
]

{ #category : #rendering }
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

{ #category : #accessing }
DojoDemoPartComponent >> sortKey [

	^ self title
]

{ #category : #accessing }
DojoDemoPartComponent >> title [

	self subclassResponsibility
]
