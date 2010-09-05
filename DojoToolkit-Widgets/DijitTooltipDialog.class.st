"
Pops up a dialog that appears like a Tooltip
"
Class {
	#name : #DijitTooltipDialog,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTooltipDialog class >> functionName [

	^ 'dijit.TooltipDialog'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> autofocus [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self access: 'autofocus'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> autofocus: aBoolean [
	"  A Toggle to modify the default focus behavior of a Dialog, which is to focus on the first dialog element after opening the dialog.
	False will disable autofocusing.
	Default: true "

	self propertyAt: 'autofocus' put: aBoolean
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> connectChildren [
	"  Connects to the onChange function of all children to track valid state changes.
	You can call this function directly, ex.
	in the event that you programmatically add a widget to the form *after* the form has been initialized. "

	self call: 'connectChildren'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> execute: formContents [ 
	"  After the user has pressed the submit button, the Dialog first calls onExecute() to notify the container to hide the dialog and restore focus to wherever it used to be.
	Then this method is called.
	type: callback "

	self call: 'execute' withArguments: (Array with: formContents)
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> getValues [
	
	self call: 'getValues'
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> isValid [
	"  Returns true if all of the widgets are valid "

	self call: 'isValid'
]

{ #category : #'events-generated' }
DijitTooltipDialog >> onCancel: anObject [
	"  Developer shouldn't override or connect to this method; it's a private communication device between the TooltipDialog and the thing that opened it (ex: dijit.form.DropDownButton) type: protected "

	self eventAt: 'onCancel' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitTooltipDialog >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitTooltipDialog >> onExecute: anObject [
	"  Developer shouldn't override or connect to this method; it's a private communication device between the TooltipDialog and the thing that opened it (ex: dijit.form.DropDownButton) type: protected "

	self eventAt: 'onExecute' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitTooltipDialog >> onOpen: pos [
	"  Called when dialog is displayed.
	This is called from the dijit.popup code, and should not be called directly. "

	self eventAt: 'onOpen' put: (pos asFunction: #(#pos))
]

{ #category : #'events-generated' }
DijitTooltipDialog >> onValidStateChange: isValid [
	"  Stub function to connect to if you want to do something (like disable/enable a submit button) when the valid state changes on the form as a whole. "

	self eventAt: 'onValidStateChange' put: (isValid asFunction: #(#isValid))
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> orient: node aroundCorner: aroundCorner corner: corner [ 
	"  Configure widget to be displayed in given position relative to the button.
	This is called from the dijit.popup code, and should not be called directly. "

	self call: 'orient' withArguments: (Array with: node with: aroundCorner with: corner)
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> reset [
	
	self call: 'reset'
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> setValues: val [ 
	
	self call: 'setValues' withArguments: (Array with: val)
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'functions-generated' }
DijitTooltipDialog >> validate [
	"  returns if the form is valid - same as isValid - but provides a few additional (ui-specific) features.
	1 - it will highlight any sub-widgets that are not valid 2 - it will call focus() on the first invalid sub-widget "

	self call: 'validate'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitTooltipDialog >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
