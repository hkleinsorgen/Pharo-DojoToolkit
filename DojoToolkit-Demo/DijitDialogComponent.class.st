Class {
	#name : #DijitDialogComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDialogComponent >> renderDemoOn: html [ 

	html dojoDialog
		id: 'dialog';
		title: 'Dojo';
		style: 'width: 200px';
		dojoConfiguration: [ : dialog |
			dialog draggable: true ];
		with: 
			[	html text: 'Hello'.
				html paragraph: [ 
					html dojoButton 
						onClick: ( html dojoUI byId: #dialog ) dialog hide;
						with: 'Dismiss'. ]
			].
	html dojoButton 
		onClick: ( html dojoUI byId: #dialog ) dialog show;
		with: 'Show dialog'.
]

{ #category : #accessing }
DijitDialogComponent >> title [

	^ 'Dialog'
]

{ #category : #accessing }
DijitDialogComponent >> url [

	^ 'http://dojotoolkit.org/api/dijit/Dialog.html'
]

{ #category : #accessing }
DijitDialogComponent >> widgetClass [

	^ DijitDialog
]
