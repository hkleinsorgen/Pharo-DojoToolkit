Extension { #name : #JSScript }

{ #category : #'*DojoToolkit-Core' }
JSScript >> dojo [

	^ (Dojo context: self renderContext )
		rendererClass: self rendererClass;
		yourself
]
