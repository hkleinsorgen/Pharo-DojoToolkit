"
The visible display may be locale-dependent and interactive. The value sent to the server is stored in a hidden input field which uses the name attribute declared by the original widget. That value sent to the server is defined by the dijit.form.MappedTextBox.serialize method and is typically locale-neutral.
"
Class {
	#name : #DijitMappedTextBox,
	#superclass : #DijitValidationTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitMappedTextBox class >> functionName [

	^ 'dijit.form.MappedTextBox'
]

{ #category : #'function overrides-generated' }
DijitMappedTextBox >> overrideSerialize: aFunction [
	"  Overridable function used to convert the attr('value') result to a canonical (non-localized) string.
	For example, will print dates in ISO format, and numbers the same way as they are represented in javascript. "

	self override: 'serialize' with: (aFunction asFunction: #(#val #options))
]

{ #category : #'functions-generated' }
DijitMappedTextBox >> serialize: val options: options [ 
	"  Overridable function used to convert the attr('value') result to a canonical (non-localized) string.
	For example, will print dates in ISO format, and numbers the same way as they are represented in javascript. "

	self call: 'serialize' withArguments: (Array with: val with: options)
]
