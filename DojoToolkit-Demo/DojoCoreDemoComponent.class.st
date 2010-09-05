Class {
	#name : #DojoCoreDemoComponent,
	#superclass : #DojoDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent class >> isAbstract [

	^ self = DojoCoreDemoComponent
]

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent >> category [

	^ 'Dojo' -> 1
]

{ #category : '*DojoToolkit-Demo' }
DojoCoreDemoComponent >> renderTestAreaOn: html [ 

	html div
		id: 'testArea';
		with: [ html paragraph: 'Test area' ].
]
