"
A button with a drop down
"
Class {
	#name : #DijitDropDownButton,
	#superclass : #DijitButton,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitDropDownButton class >> functionName [

	^ 'dijit.form.DropDownButton'
]

{ #category : #'functions-generated' }
DijitDropDownButton >> addChild: widget insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : #'properties-generated' }
DijitDropDownButton >> autoWidth [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self access: 'autoWidth'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> autoWidth: aBoolean [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self propertyAt: 'autoWidth' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDropDownButton >> closeDropDown: focus [ 
	"  Closes the drop down on this widget "

	self call: 'closeDropDown' withArguments: (Array with: focus)
]

{ #category : #'properties-generated' }
DijitDropDownButton >> dropDown [
	
	self access: 'dropDown'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> dropDown: aJsObject [
	
	self propertyAt: 'dropDown' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDropDownButton >> dropDownContainer [
	
	self access: 'dropDownContainer'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> dropDownContainer: aJsObject [
	
	self propertyAt: 'dropDownContainer' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDropDownButton >> forceWidth [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self access: 'forceWidth'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> forceWidth: aBoolean [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self propertyAt: 'forceWidth' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDropDownButton >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : #'functions-generated' }
DijitDropDownButton >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDropDownButton >> isLoaded [
	"  Returns whether or not the dropdown is loaded.
	This can be overridden in order to force a call to loadDropDown(). "

	self call: 'isLoaded'
]

{ #category : #'functions-generated' }
DijitDropDownButton >> loadDropDown: loadCallback [ 
	"  Loads the data for the dropdown, and at some point, calls the given callback "

	self call: 'loadDropDown' withArguments: (Array with: loadCallback)
]

{ #category : #'properties-generated' }
DijitDropDownButton >> maxHeight [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self access: 'maxHeight'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> maxHeight: aNumber [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self propertyAt: 'maxHeight' put: aNumber
]

{ #category : #'events-generated' }
DijitDropDownButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DijitDropDownButton >> openDropDown [
	"  Opens the dropdown for this widget - it returns the return value of dijit.popup.open "

	self call: 'openDropDown'
]

{ #category : #'functions-generated' }
DijitDropDownButton >> removeChild: widget [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: widget)
]

{ #category : #'properties-generated' }
DijitDropDownButton >> state [
	
	self access: 'state'
]

{ #category : #'properties-generated' }
DijitDropDownButton >> state: aString [
	
	self propertyAt: 'state' put: aString
]

{ #category : #'functions-generated' }
DijitDropDownButton >> toggleDropDown [
	"  Toggle the drop-down widget; if it is up, close it, if not, open it "

	self call: 'toggleDropDown'
]
