Class {
	#name : #DijitDemoDialogComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoDialogComponent >> renderDemoOn: html [ 

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
DijitDemoDialogComponent >> title [

	^ 'Dialog'
]

{ #category : #accessing }
DijitDemoDialogComponent >> url [

	^ 'http://dojotoolkit.org/api/dijit/Dialog.html'
]

{ #category : #accessing }
DijitDemoDialogComponent >> widgetClass [

	^ DijitDialog
]
