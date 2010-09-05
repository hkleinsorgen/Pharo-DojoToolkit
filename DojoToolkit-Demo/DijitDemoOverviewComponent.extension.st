Extension { #name : #DijitDemoOverviewComponent }

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderDemoOn: html [ 

	self renderTextAreaOn: html.
	self renderPaletteOn: html.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderExplanationOn: html [ 

	html paragraph: [
		html text: 'Widgets can be either created programmatically, or by declarative markup using additional HTML attributes: '.
		html div class: 'code';
			with: [ html code: [ html text: '<input '; emphasis: 'dojoType="dijit.form.TextBox"'; text: ' name="nm" value="hello world">' ]].
		html text: 'These nodes are parsed by the '.
		html anchor
			url: 'http://docs.dojocampus.org/dojo/parser';
			target: '_new';
			with: 'Dojo parser.'.
		html text: ' and converted to Dojo widgets. The markup can contain callbacks.'
	].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderPaletteOn: html [ 

	| colorValue |
	html heading level3; 
		with: 'Markup widget with callback'.
	colorValue := 'black'.
	html paragraph: [
		html dojoColorPalette dojoConfiguration: [ : paletteWidget | 
			paletteWidget 
				palette: '3x4';
				onChange: (( html dojo query: #palette )
				      ajaxPost 
				        callbackWithArgument: [: value | colorValue := value ];
				        html: [: canvas | canvas span 
						style: 'color: ', colorValue; 
						with: 'Colorful']).
		].
	].
	html paragraph id: 'palette'.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderSourceSelectors [

	^ #( 
		renderPaletteOn:
	)
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderTextAreaOn: html [ 

	html heading level3; with: 'Example: Autoexpanding text area'.
	self renderTextAreaProgrammaticallyOn: html.
	html heading level4;
		with: 'Programmatically'.
	self renderSourceOf: #renderTextAreaProgrammaticallyOn: on: html.
	html heading level4;
		with: 'Markup'.
	self renderSourceOf: #renderTextAreaWithMarkupOn: on: html.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderTextAreaProgrammaticallyOn: html [ 

	html paragraph: [
		html div 
			style: 'width: 400px';
			script: html dojoUI new textarea;
			with: 'Enter more text.'.
	].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> renderTextAreaWithMarkupOn: html [ 

	html paragraph: [
		html dojoTextarea
			style: 'width: 400px';
			with: 'Enter more text.'
	].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> sortKey [

	^'1'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> title [

	^ 'Overview'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoOverviewComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form.html'
]
