"
This is a 'styleable' select box - it is basically a DropDownButton which can take a <select> as its input.
"
Class {
	#name : #DijitSelect,
	#superclass : #DijitFormSelectWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitSelect class >> functionName [

	^ 'dijit.form.Select'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> autoWidth [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self access: 'autoWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> autoWidth: aBoolean [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self propertyAt: 'autoWidth' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> closeDropDown: focus [ 
	"  Closes the drop down on this widget "

	self call: 'closeDropDown' withArguments: (Array with: focus)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> dropDown [
	
	self access: 'dropDown'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> dropDown: aJsObject [
	
	self propertyAt: 'dropDown' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> emptyLabel [
	"  What to display in an 'empty' dropdown "

	self access: 'emptyLabel'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> emptyLabel: aJsObject [
	"  What to display in an 'empty' dropdown "

	self propertyAt: 'emptyLabel' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> forceWidth [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self access: 'forceWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> forceWidth: aBoolean [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self propertyAt: 'forceWidth' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> isLoaded [
	"  Returns whether or not the dropdown is loaded.
	This can be overridden in order to force a call to loadDropDown(). "

	self call: 'isLoaded'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> isValid: isFocused [ 
	"  Whether or not this is a valid value.
	The only way a Select can be invalid is when it's required but nothing is selected. "

	self call: 'isValid' withArguments: (Array with: isFocused)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> loadDropDown: loadCallback [ 
	"  populates the menu "

	self call: 'loadDropDown' withArguments: (Array with: loadCallback)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> maxHeight [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self access: 'maxHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> maxHeight: aNumber [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self propertyAt: 'maxHeight' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> openDropDown [
	"  Opens the dropdown for this widget - it returns the return value of dijit.popup.open "

	self call: 'openDropDown'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> required [
	"  Can be true or false, default is false. "

	self access: 'required'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> required: aBoolean [
	"  Can be true or false, default is false. "

	self propertyAt: 'required' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> state [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self access: 'state'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> state: aString [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self propertyAt: 'state' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> toggleDropDown [
	"  Toggle the drop-down widget; if it is up, close it, if not, open it "

	self call: 'toggleDropDown'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> tooltipPosition [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self access: 'tooltipPosition'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> tooltipPosition: aJsObject [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self propertyAt: 'tooltipPosition' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> uninitialize: preserveDom [ 
	"  Stub function.
	Override to implement custom widget tear-down behavior. "

	self call: 'uninitialize' withArguments: (Array with: preserveDom)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSelect >> validate: isFocused [ 
	"  Show missing or invalid messages if appropriate, and highlight textbox field.
	Used when a select is initially set to no value and the user is required to set the value "

	self call: 'validate' withArguments: (Array with: isFocused)
]
