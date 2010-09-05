Extension { #name : #DojoMarkupTest }

{ #category : '*DojoToolkit-Tests' }
DojoMarkupTest >> assert: aBlock gives: aString [ 

	super 
		assert: 
		[: html |
			html document scriptGenerator: DojoScriptGenerator new.
			aBlock value: html
		]
		gives: aString.
]

{ #category : '*DojoToolkit-Tests' }
DojoMarkupTest >> testConfiguration [

	self 
		assert: 
		[: html |
			html dojoHorizontalSlider 
				dojoConfiguration: 
				[: slider |
					slider minimum: 10;
						maximum: 20
				]
		]
		gives: '<div dojoType="dijit.form.HorizontalSlider" minimum="10" maximum="20"></div>'.
]

{ #category : '*DojoToolkit-Tests' }
DojoMarkupTest >> testDropDownButton [

	self
		assert: [ :html | html dojoDropDownButton ]
		gives: '<div dojoType="dijit.form.DropDownButton"></div>'.
]

{ #category : '*DojoToolkit-Tests' }
DojoMarkupTest >> testFunction [

	self 
		assert: 
		[: html |
			html dojoColorPalette 
				dojoConfiguration: 
				[: palette |
					palette onChange: (JSStream on: 'alert(this)').
				]
		]
		gives: '<div dojoType="dijit.ColorPalette" onChange="alert(this)"></div>'.
]

{ #category : '*DojoToolkit-Tests' }
DojoMarkupTest >> testTextArea [

	self
		assert: [ :html | html dojoTextarea ]
		gives: '<textarea rows="auto" cols="auto" dojoType="dijit.form.Textarea"></textarea>'.
]
