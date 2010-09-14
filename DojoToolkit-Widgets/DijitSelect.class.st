"
This is a 'styleable' select box - it is basically a DropDownButton which can take a <select> as its input.
"
Class {
	#name : #DijitSelect,
	#superclass : #DijitFormSelectWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitSelect class >> functionName [

	^ 'dijit.form.Select'
]

{ #category : #'properties-generated' }
DijitSelect >> autoWidth [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self access: 'autoWidth'
]

{ #category : #'properties-generated' }
DijitSelect >> autoWidth: aBoolean [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self propertyAt: 'autoWidth' put: aBoolean
]

{ #category : #'functions-generated' }
DijitSelect >> closeDropDown: focus [ 
	"  Closes the drop down on this widget "

	self call: 'closeDropDown' withArguments: (Array with: focus)
]

{ #category : #'properties-generated' }
DijitSelect >> dropDown [
	
	self access: 'dropDown'
]

{ #category : #'properties-generated' }
DijitSelect >> dropDown: aJsObject [
	
	self propertyAt: 'dropDown' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSelect >> emptyLabel [
	"  What to display in an 'empty' dropdown "

	self access: 'emptyLabel'
]

{ #category : #'properties-generated' }
DijitSelect >> emptyLabel: aJsObject [
	"  What to display in an 'empty' dropdown "

	self propertyAt: 'emptyLabel' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSelect >> forceWidth [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self access: 'forceWidth'
]

{ #category : #'properties-generated' }
DijitSelect >> forceWidth: aBoolean [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self propertyAt: 'forceWidth' put: aBoolean
]

{ #category : #'functions-generated' }
DijitSelect >> isLoaded [
	"  Returns whether or not the dropdown is loaded.
	This can be overridden in order to force a call to loadDropDown(). "

	self call: 'isLoaded'
]

{ #category : #'functions-generated' }
DijitSelect >> isValid: isFocused [ 
	"  Whether or not this is a valid value.
	The only way a Select can be invalid is when it's required but nothing is selected. "

	self call: 'isValid' withArguments: (Array with: isFocused)
]

{ #category : #'functions-generated' }
DijitSelect >> loadDropDown: loadCallback [ 
	"  populates the menu "

	self call: 'loadDropDown' withArguments: (Array with: loadCallback)
]

{ #category : #'properties-generated' }
DijitSelect >> maxHeight [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self access: 'maxHeight'
]

{ #category : #'properties-generated' }
DijitSelect >> maxHeight: aNumber [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self propertyAt: 'maxHeight' put: aNumber
]

{ #category : #'functions-generated' }
DijitSelect >> openDropDown [
	"  Opens the dropdown for this widget - it returns the return value of dijit.popup.open "

	self call: 'openDropDown'
]

{ #category : #'properties-generated' }
DijitSelect >> required [
	"  Can be true or false, default is false. "

	self access: 'required'
]

{ #category : #'properties-generated' }
DijitSelect >> required: aBoolean [
	"  Can be true or false, default is false. "

	self propertyAt: 'required' put: aBoolean
]

{ #category : #'properties-generated' }
DijitSelect >> state [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self access: 'state'
]

{ #category : #'properties-generated' }
DijitSelect >> state: aString [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self propertyAt: 'state' put: aString
]

{ #category : #'functions-generated' }
DijitSelect >> toggleDropDown [
	"  Toggle the drop-down widget; if it is up, close it, if not, open it "

	self call: 'toggleDropDown'
]

{ #category : #'properties-generated' }
DijitSelect >> tooltipPosition [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self access: 'tooltipPosition'
]

{ #category : #'properties-generated' }
DijitSelect >> tooltipPosition: aJsObject [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self propertyAt: 'tooltipPosition' put: aJsObject
]

{ #category : #'functions-generated' }
DijitSelect >> uninitialize: preserveDom [ 
	"  Stub function.
	Override to implement custom widget tear-down behavior. "

	self call: 'uninitialize' withArguments: (Array with: preserveDom)
]

{ #category : #'functions-generated' }
DijitSelect >> validate: isFocused [ 
	"  Show missing or invalid messages if appropriate, and highlight textbox field.
	Used when a select is initially set to no value and the user is required to set the value "

	self call: 'validate' withArguments: (Array with: isFocused)
]
