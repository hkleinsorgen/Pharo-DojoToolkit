Class {
	#name : #DijitDemoOverviewComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoOverviewComponent >> renderDemoOn: html [ 

	self title: 'Example: Autoexpanding text area' on: html.
	self renderTextAreaOn: html.
	self title: 'Markup widget with callback' on: html.
	self renderPaletteOn: html.
]

{ #category : #rendering }
DijitDemoOverviewComponent >> renderExplanationOn: html [ 

	html paragraph: [
		html text: 'Widgets can be either created programmatically, or by declarative markup using additional HTML attributes: '.
		html div class: 'embeddedCode';
			with: [ html code: [ html text: '<input '; emphasis: 'dojoType="dijit.form.TextBox"'; text: ' name="nm" value="hello world">' ]].
		html text: 'These nodes are parsed by the '.
		html anchor
			url: 'http://docs.dojocampus.org/dojo/parser';
			target: '_new';
			with: 'Dojo parser.'.
		html text: ' and converted to Dojo widgets. The markup can contain callbacks.'
	].
]

{ #category : #rendering }
DijitDemoOverviewComponent >> renderPaletteOn: html [ 

	| colorValue |
	colorValue := 'black'.
	html paragraph: 
		[	html dojoColorPalette dojoConfiguration: 
				[: paletteWidget |
					paletteWidget palette: '3x4';
						onChange: (( html dojo query: #palette ) ajaxPost callbackWithArgument: [: value | colorValue := value ];
									html: 
										[: canvas |
											canvas span style: 'color: ' , colorValue;
												with: 'Colorful'
										])
				]
		].
	html paragraph id: 'palette'.
]

{ #category : #rendering }
DijitDemoOverviewComponent >> renderTextAreaOn: html [ 

	self renderTextAreaProgrammaticallyOn: html.
	html heading level4;
		with: 'Programmatically'.
	self renderSourceOf: #renderTextAreaProgrammaticallyOn: on: html.
	html heading level4;
		with: 'Markup'.
	self renderSourceOf: #renderTextAreaWithMarkupOn: on: html.
]

{ #category : #rendering }
DijitDemoOverviewComponent >> renderTextAreaProgrammaticallyOn: html [ 

	html paragraph: [
		html div 
			script: html dojoUI new textarea;
			with: 'Enter more text.'.
	].
]

{ #category : #rendering }
DijitDemoOverviewComponent >> renderTextAreaWithMarkupOn: html [ 

	html paragraph: [
		html dojoTextarea
			with: 'Enter more text.'
	].
]

{ #category : #accessing }
DijitDemoOverviewComponent >> sortKey [

	^'1'
]

{ #category : #rendering }
DijitDemoOverviewComponent >> sourceSelectors [

	^ #( 
		renderPaletteOn:
	)
]

{ #category : #accessing }
DijitDemoOverviewComponent >> title [

	^ 'Overview'
]

{ #category : #accessing }
DijitDemoOverviewComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form.html'
]
