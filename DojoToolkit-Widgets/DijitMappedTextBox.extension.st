Extension { #name : #DijitMappedTextBox }

{ #category : '*DojoToolkit-Widgets' }
DijitMappedTextBox classSide >> functionName [

	^ 'dijit.form.MappedTextBox'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMappedTextBox >> overrideSerialize: aFunction [
	"  Overridable function used to convert the attr('value') result to a canonical (non-localized) string.
	For example, will print dates in ISO format, and numbers the same way as they are represented in javascript. "

	self override: 'serialize' with: (aFunction asFunction: #(#val #options))
]

{ #category : '*DojoToolkit-Widgets' }
DijitMappedTextBox >> serialize: val options: options [ 
	"  Overridable function used to convert the attr('value') result to a canonical (non-localized) string.
	For example, will print dates in ISO format, and numbers the same way as they are represented in javascript. "

	self call: 'serialize' withArguments: (Array with: val with: options)
]
