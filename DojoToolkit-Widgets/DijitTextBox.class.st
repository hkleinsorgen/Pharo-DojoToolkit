"
A base class for textbox form inputs
"
Class {
	#name : #DijitTextBox,
	#superclass : #DijitFormValueWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitTextBox class >> functionName [

	^ 'dijit.form.TextBox'
]

{ #category : #'properties-generated' }
DijitTextBox >> displayedValue [
	"  For subclasses like ComboBox where the displayed value (ex: Kentucky) and the serialized value (ex: KY) are different, this represents the displayed value.
	Setting 'displayedValue' through attr('displayedValue', ...) updates 'value', and vice-versa.
	Otherwise 'value' is updated from 'displayedValue' periodically, like onBlur etc.
	TODO: move declaration to MappedTextBox? Problem is that ComboBox references displayedValue, for benefit of FilteringSelect.
	if the textbox is blank, what value should be reported "

	self access: 'displayedValue'
]

{ #category : #'properties-generated' }
DijitTextBox >> displayedValue: aString [
	"  For subclasses like ComboBox where the displayed value (ex: Kentucky) and the serialized value (ex: KY) are different, this represents the displayed value.
	Setting 'displayedValue' through attr('displayedValue', ...) updates 'value', and vice-versa.
	Otherwise 'value' is updated from 'displayedValue' periodically, like onBlur etc.
	TODO: move declaration to MappedTextBox? Problem is that ComboBox references displayedValue, for benefit of FilteringSelect.
	if the textbox is blank, what value should be reported "

	self propertyAt: 'displayedValue' put: aString
]

{ #category : #'functions-generated' }
DijitTextBox >> filter: val [ 
	"  For MappedTextBox subclasses, this is called twice - once with the display value - once the value as set/returned by attr('value', ...) and attr('value'), ex: a Number for NumberTextBox.
	In the latter case it does corrections like converting null to NaN.
	In the former case the NumberTextBox.filter() method calls this.inherited() to execute standard trimming code in TextBox.filter().
	TODO: break this into two methods in 2.0 "

	self call: 'filter' withArguments: (Array with: val)
]

{ #category : #'functions-generated' }
DijitTextBox >> format: value constraints: constraints [ 
	"  Replacable function to convert a value to a properly formatted string. "

	self call: 'format' withArguments: (Array with: value with: constraints)
]

{ #category : #'functions-generated' }
DijitTextBox >> getDisplayedValue [
	"  Deprecated.
	Use set('displayedValue') instead. "

	self call: 'getDisplayedValue'
]

{ #category : #'properties-generated' }
DijitTextBox >> lowercase [
	"  Converts all characters to lowercase if true.
	Default is false. "

	self access: 'lowercase'
]

{ #category : #'properties-generated' }
DijitTextBox >> lowercase: aBoolean [
	"  Converts all characters to lowercase if true.
	Default is false. "

	self propertyAt: 'lowercase' put: aBoolean
]

{ #category : #'properties-generated' }
DijitTextBox >> maxLength [
	"  HTML INPUT tag maxLength declaration. "

	self access: 'maxLength'
]

{ #category : #'properties-generated' }
DijitTextBox >> maxLength: aString [
	"  HTML INPUT tag maxLength declaration. "

	self propertyAt: 'maxLength' put: aString
]

{ #category : #'functions-generated' }
DijitTextBox >> parse: value constraints: constraints [ 
	"  Replacable function to convert a formatted string to a value "

	self call: 'parse' withArguments: (Array with: value with: constraints)
]

{ #category : #'properties-generated' }
DijitTextBox >> placeHolder [
	"  Defines a hint to help users fill out the input field (as defined in HTML 5).
	This should only contain plain text (no html markup).
	allows IE to disallow focus, but Firefox cannot be disabled for mousedown events "

	self access: 'placeHolder'
]

{ #category : #'properties-generated' }
DijitTextBox >> placeHolder: aString [
	"  Defines a hint to help users fill out the input field (as defined in HTML 5).
	This should only contain plain text (no html markup).
	allows IE to disallow focus, but Firefox cannot be disabled for mousedown events "

	self propertyAt: 'placeHolder' put: aString
]

{ #category : #'properties-generated' }
DijitTextBox >> propercase [
	"  Converts the first character of each word to uppercase if true. "

	self access: 'propercase'
]

{ #category : #'properties-generated' }
DijitTextBox >> propercase: aBoolean [
	"  Converts the first character of each word to uppercase if true. "

	self propertyAt: 'propercase' put: aBoolean
]

{ #category : #'properties-generated' }
DijitTextBox >> selectOnClick [
	"  If true, all text will be selected when focused with mouse "

	self access: 'selectOnClick'
]

{ #category : #'properties-generated' }
DijitTextBox >> selectOnClick: aBoolean [
	"  If true, all text will be selected when focused with mouse "

	self propertyAt: 'selectOnClick' put: aBoolean
]

{ #category : #'functions-generated' }
DijitTextBox >> setDisplayedValue: value [ 
	"  Deprecated.
	Use set('displayedValue', ...) instead. "

	self call: 'setDisplayedValue' withArguments: (Array with: value)
]

{ #category : #'properties-generated' }
DijitTextBox >> trim [
	"  Removes leading and trailing whitespace if true.
	Default is false. "

	self access: 'trim'
]

{ #category : #'properties-generated' }
DijitTextBox >> trim: aBoolean [
	"  Removes leading and trailing whitespace if true.
	Default is false. "

	self propertyAt: 'trim' put: aBoolean
]

{ #category : #'properties-generated' }
DijitTextBox >> uppercase [
	"  Converts all characters to uppercase if true.
	Default is false. "

	self access: 'uppercase'
]

{ #category : #'properties-generated' }
DijitTextBox >> uppercase: aBoolean [
	"  Converts all characters to uppercase if true.
	Default is false. "

	self propertyAt: 'uppercase' put: aBoolean
]
