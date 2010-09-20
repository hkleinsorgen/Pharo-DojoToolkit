Class {
	#name : #DijitContainerComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitContainerComponent >> renderAccordionAboutOn: html [ 

	html text: 'More information: '.
	html anchor 
		url: 'http://dojotoolkit.org/api/dijit/layout/AccordionContainer.html';
		target: '_new';
		with: 'Reference guide'
]

{ #category : #rendering }
DijitContainerComponent >> renderAccordionOn: html [ 

	html paragraph: [
		html dojoAccordionContainer 
			class: 'layoutContainer';
			with: [	
				html dojoAccordionPane 
					title: 'Accordion';
					dojoConfiguration: [ : pane | pane tooltip: 'Accordion panes can have tooltips' ];
					with: 'This is the first pane'.
				html dojoAccordionPane 
					title: 'More';
					with: 'This is the second pane'.
				html dojoAccordionPane 
					title: 'About';
					dojoConfiguration: [ : pane | pane tooltip: 'About this accordion' ];
					with: [ self renderAccordionAboutOn: html ]
			]
	].
]

{ #category : #rendering }
DijitContainerComponent >> renderAddTabTo: id on: html [ 
	" add a new tab "

	html paragraph: 
		[	html dojoButton onClick: 
				(( html dojoUI byId: id ) tabContainer 
					addChild: ( html dojoUI new contentPane 
								title: 'New';
								content: 'New tab';
								closable: true)
					insertIndex: 3 );
				with: 'Add tab'
		].
]

{ #category : #rendering }
DijitContainerComponent >> renderBorderAboutOn: html [ 

	html text: 'More information: '.
	html anchor 
		url: 'http://www.dojotoolkit.org/reference-guide/dijit/layout/BorderContainer.html';
		target: '_new';
		with: 'Reference guide'
]

{ #category : #rendering }
DijitContainerComponent >> renderBorderContainerOn: html [ 

	html paragraph: [
		html dojoBorderContainer 
			class: 'layoutContainer';
			dojoConfiguration: 
				[: container |
					container
						liveSplitters: true;
						design: 'sidebar';
						persist: false;
						gutters: true
				];
			with: [
				html dojoContentPane 
					title: 'Border container';
					style: 'width: 150px';
					dojoConfiguration: [: pane | pane region: 'leading'; splitter: true ];
					with: 'This is the first pane'.
				html dojoContentPane
					title: 'About';
					dojoConfiguration: [: pane | pane region: 'center'; splitter: true ];
					with: [ self renderBorderAboutOn: html ]
			]
		].
]

{ #category : #rendering }
DijitContainerComponent >> renderDemoOn: html [ 

	self title: 'Tabs' on: html.
	self renderTabOn: html.
	self title: 'Accordion' on: html.
	self renderAccordionOn: html.
	self title: 'Border container' on: html.
	self renderBorderContainerOn: html.
]

{ #category : #rendering }
DijitContainerComponent >> renderTabAboutOn: html [ 

	html text: 'More information: '.
	html anchor 
		url: 'http://dojotoolkit.org/api/dijit/layout/TabContainer.html';
		target: '_new';
		with: 'Reference guide'
]

{ #category : #rendering }
DijitContainerComponent >> renderTabOn: html [ 

	| id |
	html paragraph: 
		[	html dojoTabContainer class: 'layoutContainer';
				id: ( id := 'tabs' );
				with: 
					[	html dojoContentPane title: 'Dojo';
							dojoConfiguration: 
								[: pane |
									pane closable: true;
										tooltip: 'The first tab'
								];
							with: 'This is the first tab. It is closable.'.
						html dojoContentPane title: 'More';
							with: 'This is the second tab';
							dojoConfiguration: [: pane | pane tooltip: 'The second tab' ].
						html dojoContentPane title: 'About';
							dojoConfiguration: [: pane | pane tooltip: 'About this tab widget' ];
							with: [ self renderTabAboutOn: html ]
					]
		].
	self renderAddTabTo: id on: html.
]

{ #category : #rendering }
DijitContainerComponent >> sourceSelectors [

	^#(
		renderTabOn:
		renderAccordionOn:
		#renderBorderContainerOn:
	)
]

{ #category : #accessing }
DijitContainerComponent >> title [

	^ 'Container'
]
