Extension { #name : #DojoObject }

{ #category : '*DojoToolkit-UI' }
DojoObject >> dojoUI [

	^ ( DojoUI context: self renderContext )
		rendererClass: self rendererClass;
		yourself
]
