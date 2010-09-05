Class {
	#name : #DijitDemoPartComponent,
	#superclass : #DojoDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DijitDemoPartComponent class >> isAbstract [

	^ self = DijitDemoPartComponent
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoPartComponent >> category [

	^ 'Dijit (Dojo UI)' -> 2
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoPartComponent >> renderExplanationOn: html [ 

	self widgetClass notNil 
		ifTrue: 
		[	html paragraph: 
				[	html text: 'Widget: '.
					self url notNil 
						ifTrue: 
						[	html anchor url: self url;
								target: '_new';
								with: self widgetClass functionName
						]
						ifFalse: [ html text: self widgetClass functionName ]
				]
		].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoPartComponent >> url [
	" widget documentation URL "

	^ nil
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoPartComponent >> widgetClass [

	^ nil
]
