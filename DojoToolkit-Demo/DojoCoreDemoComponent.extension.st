Extension { #name : #DojoCoreDemoComponent }

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent >> category [

	^ 'Dojo' -> 1
]

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent classSide >> isAbstract [

	^ self = DojoCoreDemoComponent
]

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent >> renderTestAreaOn: html [ 

	html div
		id: 'testArea';
		with: [ html paragraph: 'Test area' ].
]
