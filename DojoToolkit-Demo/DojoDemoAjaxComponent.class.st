Class {
	#name : #DojoDemoAjaxComponent,
	#superclass : #DojoCoreDemoComponent,
	#instVars : [
		'numberOfCallbacks'
	],
	#category : 'DojoToolkit-Demo'
}

{ #category : #initialization }
DojoDemoAjaxComponent >> initialize [

	super initialize.
	numberOfCallbacks := 0.
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderAppendOn: html [ 

	html submitButton 
		onClick: (( html dojo query: #testArea ) ajax 
			append: [: canvas | 
				canvas emphasis: DateAndTime now printString ]);
		text: 'Append HTML'.
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderCallbackOn: html [ 

	html submitButton 
		onClick: ( html dojo ajax script: 
			[: s |
				numberOfCallbacks := numberOfCallbacks + 1.
				s << (( s dojo query: #testArea ) innerHTML: 
					'Callbacks so far: ' , numberOfCallbacks printString )
			]);
		text: 'Callback'
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderDemoOn: html [ 

	html div: 
		[	self renderReplaceOn: html.
			self renderAppendOn: html.
			self renderCallbackOn: html.
			self renderErrorOn: html
		].
	html paragraph id: 'testArea';
		with: 'Here be dragons'.
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderErrorOn: html [ 
	" send the request to an URL without a request handler "

	html submitButton 
		onClick: ( html dojo ajax 
			script: [: s | s << (( s dojo query: #testArea ) 
				innerHTML: 'No error, although one was expected') ] 
			errorScript: [ : s : error | 
				s << ((html dojo query: #testArea )
					 innerHTML: error ) ];
			url: '/this/path/does/not/exist' );
		text: 'Error'.
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderReplaceOn: html [ 

	html submitButton 
		onClick: (( html dojo query: #testArea ) ajax 
			html: [: canvas | 
				canvas emphasis: DateAndTime now printString ]);
		text: 'Replace HTML'.
]

{ #category : #rendering }
DojoDemoAjaxComponent >> renderSourceSelectors [

	^ #(	
		renderReplaceOn:
		renderAppendOn:
		renderCallbackOn:
		renderErrorOn:
	)
]

{ #category : #accessing }
DojoDemoAjaxComponent >> title [

	^ 'Ajax'
]
