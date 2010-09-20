"
An HTML-capable Dialog widget with advanced sizing options, animated show/hide and other useful options. This Dialog is also very easy to apply custom styles to. It works identically to a dijit.Dialog with several additional parameters.
"
Class {
	#name : #DojoxWidgetDialog,
	#superclass : #DojoxContentPane,
	#category : 'DojoToolkit-DojoX'
}

{ #category : #'accessing-generated' }
DojoxWidgetDialog class >> functionName [

	^ 'dojox.widget.Dialog'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> ariaDescribedby [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self access: 'aria-describedby'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> ariaDescribedby: aString [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self propertyAt: 'aria-describedby' put: aString
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> autofocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self access: 'autofocus'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> autofocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self propertyAt: 'autofocus' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> dimensions [
	"  A two-element array of [widht,height] to animate the Dialog to if sizeToViewport='false' Defaults to [300,300] "

	self access: 'dimensions'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> dimensions: anArray [
	"  A two-element array of [widht,height] to animate the Dialog to if sizeToViewport='false' Defaults to [300,300] "

	self propertyAt: 'dimensions' put: anArray
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> draggable [
	"  Make the pane draggable.
	Differs from dijit.Dialog by setting default to false simply over-ride the default from dijit.Dialog "

	self access: 'draggable'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> draggable: aBoolean [
	"  Make the pane draggable.
	Differs from dijit.Dialog by setting default to false simply over-ride the default from dijit.Dialog "

	self propertyAt: 'draggable' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> easing [
	"  An easing function to apply to the sizing animation. "

	self access: 'easing'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> easing: aJsObject [
	"  An easing function to apply to the sizing animation. "

	self propertyAt: 'easing' put: aJsObject
]

{ #category : #'functions-generated' }
DojoxWidgetDialog >> hide [
	"  Hide the dialog "

	self call: 'hide'
]

{ #category : #'functions-generated' }
DojoxWidgetDialog >> layout: e [ 
	"  Position the Dialog and the underlay "

	self call: 'layout' withArguments: (Array with: e)
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> modal [
	"  If true, this Dialog instance will be truly modal and prevent closing until explicitly told to by calling hide() - Defaults to false to preserve previous behaviors. "

	self access: 'modal'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> modal: aBoolean [
	"  If true, this Dialog instance will be truly modal and prevent closing until explicitly told to by calling hide() - Defaults to false to preserve previous behaviors. "

	self propertyAt: 'modal' put: aBoolean
]

{ #category : #'events-generated' }
DojoxWidgetDialog >> onLoad: data [
	"  Event hook, is called after everything is loaded and widgetified "

	self eventAt: 'onLoad' put: (data asFunction: #(#data))
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> open [
	"  True if Dialog is currently displayed on screen. "

	self access: 'open'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> open: aBoolean [
	"  True if Dialog is currently displayed on screen. "

	self propertyAt: 'open' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> refocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self access: 'refocus'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> refocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self propertyAt: 'refocus' put: aBoolean
]

{ #category : #'functions-generated' }
DojoxWidgetDialog >> show [
	"  Display the dialog "

	self call: 'show'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeDuration [
	"  Time (in ms) to use in the Animation for sizing. "

	self access: 'sizeDuration'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeDuration: aNumber [
	"  Time (in ms) to use in the Animation for sizing. "

	self propertyAt: 'sizeDuration' put: aNumber
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeMethod [
	"  To be passed to dojox.fx.sizeTo, one of 'chain' or 'combine' to effect the animation sequence. "

	self access: 'sizeMethod'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeMethod: aString [
	"  To be passed to dojox.fx.sizeTo, one of 'chain' or 'combine' to effect the animation sequence. "

	self propertyAt: 'sizeMethod' put: aString
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeToViewport [
	"  If true, fix the size of the dialog to the Viewport based on viewportPadding value rather than the calculated or natural stlye.
	If false, base the size on a passed dimension attribute.
	Eitherway, the viewportPadding value is used if the the content extends beyond the viewport size for whatever reason. "

	self access: 'sizeToViewport'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> sizeToViewport: aBoolean [
	"  If true, fix the size of the dialog to the Viewport based on viewportPadding value rather than the calculated or natural stlye.
	If false, base the size on a passed dimension attribute.
	Eitherway, the viewportPadding value is used if the the content extends beyond the viewport size for whatever reason. "

	self propertyAt: 'sizeToViewport' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> templateString [
	
	self access: 'templateString'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> templateString: aJsObject [
	
	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> underlayAttrs [
	
	self access: 'underlayAttrs'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> underlayAttrs: aJsObject [
	
	self propertyAt: 'underlayAttrs' put: aJsObject
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> viewportPadding [
	"  If sizeToViewport='true', this is the amount of padding in pixels to leave between the dialog border and the viewport edge.
	This value is also used when sizeToViewport='false' and dimensions exceeded by dialog content to ensure dialog does not go outside viewport boundary "

	self access: 'viewportPadding'
]

{ #category : #'properties-generated' }
DojoxWidgetDialog >> viewportPadding: aNumber [
	"  If sizeToViewport='true', this is the amount of padding in pixels to leave between the dialog border and the viewport edge.
	This value is also used when sizeToViewport='false' and dimensions exceeded by dialog content to ensure dialog does not go outside viewport boundary "

	self propertyAt: 'viewportPadding' put: aNumber
]
