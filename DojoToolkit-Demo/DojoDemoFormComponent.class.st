Class {
	#name : #DojoDemoFormComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoDemoFormComponent >> renderDemoOn: html [ 

	| newName newCategory feedbackId form |
	newName := ''.
	newCategory := ''.
	feedbackId := html nextId.
	form := html dojoAjaxForm .
	form
		with: 
			[	html paragraph: 
					[	html text: 'Name: '.
						html dojoTextBox callback: [: aString | newName := aString ];
							dojoConfiguration: [: box | box selectOnClick: true ];
							value: 'Enter a class name'
					].
				html paragraph: 
					[	html text: 'Category: '.
						html dojoTextBox callback: [: aString | newCategory := aString ];
							dojoConfiguration: [: box | box selectOnClick: true ];
							value: 'Enter a category'
					].
				html paragraph: 
					[	html dojoButton onClick: (
							form submit: [ : ajax |
								" show feedback "
								ajax query: ( html dojo byId: feedbackId );
								html: [ : ajaxCanvas  | 
									ajaxCanvas text: 'New class: '; 
										emphasis: newName; 
										text: ' category: '; 
										emphasis: newCategory ]]
							) asFunction;
							with: 'Submit'
					]
			].
	html paragraph id: feedbackId.
]

{ #category : #rendering }
DojoDemoFormComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html.
	html paragraph: [ html text: 'The form is submitted with an Ajax POST request and does not refresh the entire page' ].
]

{ #category : #accessing }
DojoDemoFormComponent >> title [

	^ 'Forms'
]
