"
Base class for textbox widgets with the ability to validate content of various types and provide user feedback.
"
Class {
	#name : #DijitValidationTextBox,
	#superclass : #DijitTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitValidationTextBox class >> functionName [

	^ 'dijit.form.ValidationTextBox'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> constraints [
	"  user-defined object needed to pass parameters to the validator functions "

	self access: 'constraints'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> constraints: aJsObject [
	"  user-defined object needed to pass parameters to the validator functions "

	self propertyAt: 'constraints' put: aJsObject
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> displayMessage: message [ 
	"  Overridable method to display validation errors/hints.
	By default uses a tooltip. "

	self call: 'displayMessage' withArguments: (Array with: message)
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> getErrorMessage: isFocused [ 
	"  Return an error message to show if appropriate "

	self call: 'getErrorMessage' withArguments: (Array with: isFocused)
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> getPromptMessage: isFocused [ 
	"  Return a hint message to show when widget is first focused "

	self call: 'getPromptMessage' withArguments: (Array with: isFocused)
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> invalidMessage [
	"  The message to display if value is invalid.
	The translated string value is read from the message file by default.
	Set to '' to use the promptMessage instead. "

	self access: 'invalidMessage'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> invalidMessage: aString [
	"  The message to display if value is invalid.
	The translated string value is read from the message file by default.
	Set to '' to use the promptMessage instead. "

	self propertyAt: 'invalidMessage' put: aString
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> isValid: isFocused [ 
	"  Tests if value is valid.
	Can override with your own routine in a subclass. "

	self call: 'isValid' withArguments: (Array with: isFocused)
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> messages [
	
	self access: 'messages'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> messages: aJsObject [
	
	self propertyAt: 'messages' put: aJsObject
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> missingMessage [
	"  The message to display if value is empty and the field is required.
	The translated string value is read from the message file by default.
	Set to '' to use the invalidMessage instead. "

	self access: 'missingMessage'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> missingMessage: aString [
	"  The message to display if value is empty and the field is required.
	The translated string value is read from the message file by default.
	Set to '' to use the invalidMessage instead. "

	self propertyAt: 'missingMessage' put: aString
]

{ #category : #'function overrides-generated' }
DijitValidationTextBox >> overrideRegExpGen: aFunction [
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self override: 'regExpGen' with: (aFunction asFunction: #(#constraints #locale #_flags_))
]

{ #category : #'function overrides-generated' }
DijitValidationTextBox >> overrideValidator: aFunction [
	"  Overridable function used to validate the text input against the regular expression. "

	self override: 'validator' with: (aFunction asFunction: #(#value #constraints #locale #_flags_))
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> promptMessage [
	"  If defined, display this hint string immediately on focus to the textbox, if empty.
	Think of this like a tooltip that tells the user what to do, not an error message that tells the user what they've done wrong.
	Message disappears when user starts typing. "

	self access: 'promptMessage'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> promptMessage: aString [
	"  If defined, display this hint string immediately on focus to the textbox, if empty.
	Think of this like a tooltip that tells the user what to do, not an error message that tells the user what they've done wrong.
	Message disappears when user starts typing. "

	self propertyAt: 'promptMessage' put: aString
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> regExp [
	"  regular expression string used to validate the input Do not specify both regExp and regExpGen "

	self access: 'regExp'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> regExp: aString [
	"  regular expression string used to validate the input Do not specify both regExp and regExpGen "

	self propertyAt: 'regExp' put: aString
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> regExpGen: constraints locale: locale flags: flags [ 
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self call: 'regExpGen' withArguments: (Array with: constraints with: locale with: flags)
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> required [
	"  User is required to enter data into this field. "

	self access: 'required'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> required: aBoolean [
	"  User is required to enter data into this field. "

	self propertyAt: 'required' put: aBoolean
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> state [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self access: 'state'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> state: aString [
	"  Shows current state (ie, validation result) of input (Normal, Warning, or Error) "

	self propertyAt: 'state' put: aString
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> tooltipPosition [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self access: 'tooltipPosition'
]

{ #category : #'properties-generated' }
DijitValidationTextBox >> tooltipPosition: aJsObject [
	"  See description of dijit.Tooltip.defaultPosition for details on this parameter. "

	self propertyAt: 'tooltipPosition' put: aJsObject
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> validate: isFocused [ 
	"  Show missing or invalid messages if appropriate, and highlight textbox field "

	self call: 'validate' withArguments: (Array with: isFocused)
]

{ #category : #'functions-generated' }
DijitValidationTextBox >> validator: value constraints: constraints locale: locale flags: flags [ 
	"  Overridable function used to validate the text input against the regular expression. "

	self call: 'validator' withArguments: (OrderedCollection new add: value; add: constraints; add: locale; add: flags; yourself)
]
