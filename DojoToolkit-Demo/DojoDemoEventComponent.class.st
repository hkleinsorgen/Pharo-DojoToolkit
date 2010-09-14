Class {
	#name : #DojoDemoEventComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoDemoEventComponent >> renderDemoOn: html [ 

	html paragraph: [ 
		html dojoButton 
			id: 'eventById';
			with: 'Connected by id'.
		html dojoButton 
			class: 'eventByQuery';
			with: 'Connected by query (1)'.
		html dojoButton 
			class: 'eventByQuery';
			with: 'Connected by query (2)'.
	].

	html document 
		addLoadScript: ( ( html dojo byId: #eventById ) 
			connectEvent: 'onclick' 
			method: (self showMessageOn: html ));
		addLoadScript: ( ( html dojo query: '.eventByQuery' )
			connectEvent: 'onclick' 
			method: (self showMessageOn: html )).
	html div: [ html paragraph with: [ html emphasis id: 'testArea'; with: ' ' ]]
]

{ #category : #rendering }
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

{ #category : #rendering }
DojoDemoEventComponent >> showMessageOn: html [ 
	" show the label of the pressed button "

	^ (( html dojo query: #testArea ) innerHTML: html dojo event currentTarget enclosingWidget button label ) asFunction: #( #event )
]

{ #category : #accessing }
DojoDemoEventComponent >> title [

	^ 'Events'
]
