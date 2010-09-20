Class {
	#name : #DojoDragAndDropComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoDragAndDropComponent >> renderDemoOn: html [ 

	html div with: 
		[	self title: 'Drop cool things here' on: html.
			html orderedList beDojoDragSourceAccepting: #( 'tool' 'language' )
		].
	self title: 'Programming languages' on: html.
	html orderedList beDojoDragSourceAccepting: 'language';
		with: 
			[	#( 'Smalltalk' 'JavaScript' 'Java' ) do: 
					[: language |
						html listItem beDojoDragItemOfType: 'language';
							with: language
					]
			].
	self title: 'Tools' on: html.
	html orderedList beDojoDragSourceAccepting: 'tool';
		with: 
			[	#( 'Swiss army knife' 'Duct tape' 'Paper clip' ) do: 
					[: language |
						html listItem beDojoDragItemOfType: 'tool';
							with: language
					]
			].
]

{ #category : #rendering }
DojoDragAndDropComponent >> renderExplanationOn: html [

	super renderExplanationOn: html.
	html text: 'You can reorder items or move them to other containers. Container and item types restrict the possible drop operations.'.
]

{ #category : #accessing }
DojoDragAndDropComponent >> title [

	^ 'Drag and drop'
]
