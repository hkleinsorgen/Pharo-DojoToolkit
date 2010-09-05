Class {
	#name : #DojoDemoEventComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DojoDemoEventComponent >> renderDemoOn: html [ 

	| customHandler |
	html div: 
		[	
			html submitButton 
				id: 'eventById';
				text: 'Connected by id'.
			html submitButton 
				class: 'eventByQuery';
				text: 'Connected by query (1)'.
			html submitButton 
				class: 'eventByQuery';
				text: 'Connected by query (2)'.
		].

	" custom event handler "
	customHandler := ((html dojo query: #testArea) 
		innerHTML: (html dojo event currentTarget access: 'value'))
		asFunction: #(#event).
	html document 
		addLoadScript: ( ( html dojo byId: #eventById ) 
			connectEvent: 'onclick' 
			method: customHandler);
		addLoadScript: ( ( html dojo query: '.eventByQuery' )
			connectEvent: 'onclick' 
			method: customHandler).
	html div: [ html paragraph with: [ html emphasis id: 'testArea'; with: ' ' ]]
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoEventComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html.
	html paragraph: [ 
		html text: 'The buttons are connected with '.
		( html anchor ) 
			url: 'http://dojotoolkit.org/reference-guide/dojo/query.html';
			target: '_new';
			with: 'Dojo queries'.
		html text: ' to an  event handler'
	].
]

{ #category : '*DojoToolkit-Demo' }
DojoDemoEventComponent >> title [

	^ 'Events'
]
