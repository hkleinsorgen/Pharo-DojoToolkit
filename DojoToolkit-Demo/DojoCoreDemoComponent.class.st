Class {
	#name : #DojoCoreDemoComponent,
	#superclass : #DojoDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #accessing }
DojoCoreDemoComponent class >> isAbstract [

	^ self = DojoCoreDemoComponent
]

{ #category : #accessing }
DojoCoreDemoComponent >> category [

	^ 'Dojo' -> 1
]

{ #category : #accessing }
DojoCoreDemoComponent >> renderTestAreaOn: html [ 

	html div
		id: 'testArea';
		with: [ html paragraph: 'Test area' ].
]
