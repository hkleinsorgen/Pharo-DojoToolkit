Extension { #name : #DijitDemoTooltipComponent }

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> renderDemoOn: html [

	self renderTooltipDialogOn: html.
	self renderTooltipOn: html.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> renderSourceSelectors [

	^ #( 
		#renderTooltipDialogOn:
		#renderTooltipOn:
	)
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> renderTooltipDialogOn: html [ 

	html heading level3;
		with: 'Tooltip dialog'.
	html paragraph: 
		[	html dojoDropDownButton: 
				[	html span: 'Click on me'.
					html dojoTooltipDialog: [ html text: 'Well done' ]
				]
		].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> renderTooltipOn: html [ 

	| id |
	html heading level3;
			with: 'Tooltip'.
	html paragraph: [ 
		html text: 'Hover over the following link: '.
		html anchor
			id: (id := 'anchor');
			url: self url;
			target: '_new';
			with: self title.
		html dojoTooltip 
			dojoConfiguration: [ : tooltip |
				tooltip 
					connectId: id;
					position: 'below'];
			with: 'Dojo reference guide for ', self title
	]
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> title [

	^ 'Tooltip'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> url [

	^ 'http://dojotoolkit.org/api/dijit/TooltipDialog.html'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoTooltipComponent >> widgetClass [

	^ DijitTooltipDialog
]
