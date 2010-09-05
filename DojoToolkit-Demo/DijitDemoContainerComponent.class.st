Class {
	#name : #DijitDemoContainerComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderAccordionAboutOn: html [ 

	html text: 'More information: '.
	html anchor 
		url: 'http://dojotoolkit.org/api/dijit/layout/AccordionContainer.html';
		target: '_new';
		with: 'Reference guide'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderAccordionOn: html [ 

	html heading level3; with: 'Accordion'.
	html paragraph: [
		html dojoAccordionContainer 
			style: 'width: 400px; height: 200px';
			with: [	
				html dojoAccordionPane 
					title: 'Accordion';
					dojoConfiguration: [ : pane | pane tooltip: 'Accordion panes can have tooltips' ];
					with: 'This is the first pane'.
				html dojoAccordionPane 
					title: 'About';
					dojoConfiguration: [ : pane | pane tooltip: 'About this accordion' ];
					with: [ self renderAccordionAboutOn: html ]
			]
	].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderDemoOn: html [ 

	self renderTabOn: html.
	self renderAccordionOn: html.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderSourceSelectors [

	^#(
		renderTabOn:
		renderAccordionOn:
	)
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderTabAboutOn: html [ 

	html text: 'More information: '.
	html anchor 
		url: 'http://dojotoolkit.org/api/dijit/layout/TabContainer.html';
		target: '_new';
		with: 'Reference guide'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> renderTabOn: html [ 

	html heading level3;
		with: 'Tabs'.
	html paragraph:[
		html dojoTabContainer
			style: 'width: 400px; height: 100px';
			with: 
				[	html dojoContentPane title: 'Dojo';
						dojoConfiguration: 
							[: pane |
								pane closable: true;
									tooltip: 'The first tab'
							];
						with: 'This is the first tab. It is closable.'.
					html dojoContentPane title: 'About';
						dojoConfiguration: [: pane | pane tooltip: 'About this tab widget' ];
						with: [ self renderTabAboutOn: html ]
				]
	].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoContainerComponent >> title [

	^ 'Container'
]
