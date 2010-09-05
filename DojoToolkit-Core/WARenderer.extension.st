Extension { #name : #WARenderer }

{ #category : #'*DojoToolkit-Core' }
WARenderer >> dojo [
	" returns the Dojo root object  "

	^ ( Dojo context: self context )
		rendererClass: self species;
		yourself
]

{ #category : #'*DojoToolkit-Core' }
WARenderer >> urlForDojoAjaxCallback: aBlock [ 
	"Answer an action URL that will evaluate aBlock when it is requested."

	^ self actionUrl withField: ( self callbacks store: ( JSAjaxCallback on: aBlock ))
]
