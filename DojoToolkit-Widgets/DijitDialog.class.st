Class {
	#name : #DijitDialog,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDialog class >> functionName [

	^ 'dijit.Dialog'
]

{ #category : #'properties-generated' }
DijitDialog >> ariaDescribedby [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self access: 'aria-describedby'
]

{ #category : #'properties-generated' }
DijitDialog >> ariaDescribedby: aString [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self propertyAt: 'aria-describedby' put: aString
]

{ #category : #'properties-generated' }
DijitDialog >> autofocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self access: 'autofocus'
]

{ #category : #'properties-generated' }
DijitDialog >> autofocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self propertyAt: 'autofocus' put: aBoolean
]

{ #category : #'properties-generated' }
DijitDialog >> draggable [
	"  Toggles the moveable aspect of the Dialog.
	If true, Dialog can be dragged by it's title.
	If false it will remain centered in the viewport. "

	self access: 'draggable'
]

{ #category : #'properties-generated' }
DijitDialog >> draggable: aBoolean [
	"  Toggles the moveable aspect of the Dialog.
	If true, Dialog can be dragged by it's title.
	If false it will remain centered in the viewport. "

	self propertyAt: 'draggable' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDialog >> hide [
	"  Hide the dialog "

	self call: 'hide'
]

{ #category : #'functions-generated' }
DijitDialog >> layout [
	"  Position the Dialog and the underlay "

	self call: 'layout'
]

{ #category : #'events-generated' }
DijitDialog >> onLoad: data [
	"  Event hook, is called after everything is loaded and widgetified "

	self eventAt: 'onLoad' put: (data asFunction: #(#data))
]

{ #category : #'properties-generated' }
DijitDialog >> open [
	"  True if Dialog is currently displayed on screen. "

	self access: 'open'
]

{ #category : #'properties-generated' }
DijitDialog >> open: aBoolean [
	"  True if Dialog is currently displayed on screen. "

	self propertyAt: 'open' put: aBoolean
]

{ #category : #'properties-generated' }
DijitDialog >> refocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self access: 'refocus'
]

{ #category : #'properties-generated' }
DijitDialog >> refocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self propertyAt: 'refocus' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDialog >> show [
	"  Display the dialog "

	self call: 'show'
]

{ #category : #'properties-generated' }
DijitDialog >> templateString [
	
	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitDialog >> templateString: aJsObject [
	
	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDialog >> underlayAttrs [
	
	self access: 'underlayAttrs'
]

{ #category : #'properties-generated' }
DijitDialog >> underlayAttrs: aJsObject [
	
	self propertyAt: 'underlayAttrs' put: aJsObject
]
