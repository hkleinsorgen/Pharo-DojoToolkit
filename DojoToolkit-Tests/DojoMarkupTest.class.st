Class {
	#name : #DojoMarkupTest,
	#superclass : #WAAbstractCanvasBrushTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #private }
DojoMarkupTest >> assert: aBlock gives: aString [ 

	super 
		assert: 
		[: html | | generator |
			generator := DojoScriptGenerator new.
			html document scriptGenerator: generator.
			aBlock value: html.
			generator flushScripts
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
DojoMarkupTest >> testDragItem [

	self
		assert: [ :html | html listItem beDojoDragItem ]
		gives: '<li class="dojoDndItem"></li>'.

	self
		assert: [ :html | html listItem beDojoDragItemOfType: 'milkshake' ]
		gives: '<li class="dojoDndItem" dndType="milkshake"></li>'.
]

{ #category : #tests }
DojoMarkupTest >> testDragSource [

	self
		assert: [ :html | html unorderedList beDojoDragSource ]
		gives: '<ul dojoType="dojo.dnd.Source" class="container"></ul>'.

	self
		assert: [ :html | html unorderedList beDojoDragSourceForType: #('stuff' 'misc') ]
		gives: '<ul dojoType="dojo.dnd.Source" class="container" accept="stuff,misc"></ul>'.
]

{ #category : #tests }
DojoMarkupTest >> testDropDownButton [

	self
		assert: [ :html | html dojoDropDownButton ]
		gives: '<div dojoType="dijit.form.DropDownButton"></div>'.
]

{ #category : #tests }
DojoMarkupTest >> testDroptarget [

	self
		assert: [ :html | html orderedList beDojoDropTarget ]
		gives: '<ol dojoType="dojo.dnd.Target" class="container"></ol>'.

	self
		assert: [ :html | html orderedList beDojoDropTargetForType: 'stuff' ]
		gives: '<ol dojoType="dojo.dnd.Target" class="container" accept="stuff"></ol>'.
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
