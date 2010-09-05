Class {
	#name : #DojoMarkupTest,
	#superclass : #WAAbstractCanvasBrushTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #private }
DojoMarkupTest >> assert: aBlock gives: aString [ 

	super 
		assert: 
		[: html |
			html document scriptGenerator: DojoScriptGenerator new.
			aBlock value: html
		]
		gives: aString.
]

{ #category : #tests }
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

{ #category : #tests }
DojoMarkupTest >> testDropDownButton [

	self
		assert: [ :html | html dojoDropDownButton ]
		gives: '<div dojoType="dijit.form.DropDownButton"></div>'.
]

{ #category : #tests }
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

{ #category : #tests }
DojoMarkupTest >> testTextArea [

	self
		assert: [ :html | html dojoTextarea ]
		gives: '<textarea rows="auto" cols="auto" dojoType="dijit.form.Textarea"></textarea>'.
]
