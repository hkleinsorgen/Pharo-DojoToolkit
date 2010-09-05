Extension { #name : #DijitDialog }

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> ariaDescribedby [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self access: 'aria-describedby'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> ariaDescribedby: aString [
	"  Allows the user to add an aria-describedby attribute onto the dialog.
	The value should be the id of the container element of text that describes the dialog purpose (usually the first text in the dialog).
	<div dojoType='dijit.Dialog' aria-describedby='intro' .....> <div id='intro'>Introductory text</div> <div>rest of dialog contents</div> </div> "

	self propertyAt: 'aria-describedby' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> autofocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self access: 'autofocus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> autofocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self propertyAt: 'autofocus' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> draggable [
	"  Toggles the moveable aspect of the Dialog.
	If true, Dialog can be dragged by it's title.
	If false it will remain centered in the viewport. "

	self access: 'draggable'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> draggable: aBoolean [
	"  Toggles the moveable aspect of the Dialog.
	If true, Dialog can be dragged by it's title.
	If false it will remain centered in the viewport. "

	self propertyAt: 'draggable' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog classSide >> functionName [

	^ 'dijit.Dialog'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> hide [
	"  Hide the dialog "

	self call: 'hide'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> layout [
	"  Position the Dialog and the underlay "

	self call: 'layout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> onLoad: data [
	"  Event hook, is called after everything is loaded and widgetified "

	self eventAt: 'onLoad' put: (data asFunction: #(#data))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> open [
	"  True if Dialog is currently displayed on screen. "

	self access: 'open'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> open: aBoolean [
	"  True if Dialog is currently displayed on screen. "

	self propertyAt: 'open' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> refocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self access: 'refocus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> refocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to re-focus the element which had focus before being opened.
	False will disable refocusing.
	Default: true "

	self propertyAt: 'refocus' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> show [
	"  Display the dialog "

	self call: 'show'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> templateString [
	
	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> templateString: aJsObject [
	
	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> underlayAttrs [
	
	self access: 'underlayAttrs'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDialog >> underlayAttrs: aJsObject [
	
	self propertyAt: 'underlayAttrs' put: aJsObject
]
