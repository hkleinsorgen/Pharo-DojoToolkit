Class {
	#name : #DijitTooltipComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitTooltipComponent >> renderDemoOn: html [

	self title: 'Tooltip dialog' on: html.
	self renderTooltipDialogOn: html.
	self title: 'Tooltip' on: html.
	self renderTooltipOn: html.
]

{ #category : #rendering }
DijitTooltipComponent >> renderTooltipDialogOn: html [ 

	html paragraph: 
		[	html dojoDropDownButton: 
				[	html span: 'Click on me'.
					html dojoTooltipDialog: [ html text: 'Well done' ]
				]
		].
]

{ #category : #rendering }
DijitTooltipComponent >> renderTooltipOn: html [ 

	| id |
	html paragraph: 
		[	html text: 'Hover over the following link: '.
			html anchor
				id: ( id := 'anchor' );
				url: self url;
				target: '_new';
				with: self title.
			html dojoTooltip dojoConfiguration: 
					[: tooltip |
						tooltip connectId: id;
							position: 'below'
					];
				with: 'Dojo reference guide for ' , self title
		].
]

{ #category : #accessing }
DijitTooltipComponent >> sourceSelectors [

	^ #( 
		#renderTooltipDialogOn:
		#renderTooltipOn:
	)
]

{ #category : #accessing }
DijitTooltipComponent >> title [

	^ 'Tooltip'
]

{ #category : #accessing }
DijitTooltipComponent >> url [

	^ 'http://dojotoolkit.org/api/dijit/TooltipDialog.html'
]

{ #category : #accessing }
DijitTooltipComponent >> widgetClass [

	^ DijitTooltipDialog
]
