Class {
	#name : #DojoAjaxComponent,
	#superclass : #DojoCoreDemoComponent,
	#instVars : [
		'numberOfCallbacks'
	],
	#category : 'DojoToolkit-Demo'
}

{ #category : #initialization }
DojoAjaxComponent >> initialize [

	super initialize.
	numberOfCallbacks := 0.
]

{ #category : #rendering }
DojoAjaxComponent >> renderAppendOn: html [ 

	html dojoButton 
		onClick: (( html dojo query: #testArea ) ajax 
			append: [: canvas | 
				canvas emphasis: DateAndTime now printString ]);
		with: 'Append HTML'.
]

{ #category : #rendering }
DojoAjaxComponent >> renderCallbackOn: html [ 

	html dojoButton 
		onClick: ( html dojo ajax script: 
			[: s |
				numberOfCallbacks := numberOfCallbacks + 1.
				s << (( s dojo query: #testArea ) innerHTML: 
					'Callbacks so far: ' , numberOfCallbacks printString )
			]);
		with: 'Callback'
]

{ #category : #rendering }
DojoAjaxComponent >> renderDemoOn: html [ 

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
DojoAjaxComponent >> renderErrorOn: html [ 
	" send the request to an URL without a request handler "

	html dojoButton 
		onClick: ( html dojo ajax 
			script: [: s | s << (( s dojo query: #testArea ) 
				innerHTML: 'No error, although one was expected') ] 
			errorScript: [ : s : error | 
				s << ((html dojo query: #testArea )
					 innerHTML: error ) ];
			url: '/this/path/does/not/exist' );
		with: 'Error'.
]

{ #category : #rendering }
DojoAjaxComponent >> renderReplaceOn: html [ 

	html dojoButton 
		onClick: (( html dojo query: #testArea ) ajax 
			html: [: canvas | 
				canvas emphasis: DateAndTime now printString ]);
		with: 'Replace HTML'.
]

{ #category : #rendering }
DojoAjaxComponent >> sourceSelectors [

	^ #(	
		renderReplaceOn:
		renderAppendOn:
		renderCallbackOn:
		renderErrorOn:
	)
]

{ #category : #accessing }
DojoAjaxComponent >> title [

	^ 'Ajax'
]
