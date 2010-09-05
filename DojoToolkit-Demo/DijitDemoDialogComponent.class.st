Class {
	#name : #DijitDemoDialogComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DijitDemoDialogComponent >> renderDemoOn: html [ 

	html dojoDialog
		id: 'dialog';
		title: 'Dojo';
		style: 'width: 200px';
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

{ #category : '*DojoToolkit-Demo' }
DijitDemoDialogComponent >> title [

	^ 'Dialog'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoDialogComponent >> url [

	^ 'http://dojotoolkit.org/api/dijit/Dialog.html'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoDialogComponent >> widgetClass [

	^ DijitDialog
]
