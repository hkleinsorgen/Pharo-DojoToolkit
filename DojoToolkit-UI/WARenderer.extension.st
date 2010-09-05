Extension { #name : #WARenderer }

{ #category : #'*DojoToolkit-UI' }
WARenderer >> dojoUI [
	" returns the Dojo UI (dijit) root object  "

	^ (DojoUI context: self context )
		rendererClass: self species;
		yourself
]
