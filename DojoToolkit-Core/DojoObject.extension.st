Extension { #name : #DojoObject }

{ #category : '*DojoToolkit-Core' }
DojoObject classSide >> context: aRenderContext owner: anObject [ 

	^ ( self context: aRenderContext )
		owner: anObject ;
		yourself
]

{ #category : '*DojoToolkit-Core' }
DojoObject classSide >> functionName [

	^ self subclassResponsibility
]
