Class {
	#name : #DijitDemoPartComponent,
	#superclass : #DojoDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #accessing }
DijitDemoPartComponent class >> isAbstract [

	^ self = DijitDemoPartComponent
]

{ #category : #accessing }
DijitDemoPartComponent >> category [

	^ 'Dijit (Dojo UI)' -> 2
]

{ #category : #rendering }
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

{ #category : #accessing }
DijitDemoPartComponent >> url [
	" widget documentation URL "

	^ nil
]

{ #category : #accessing }
DijitDemoPartComponent >> widgetClass [

	^ nil
]
