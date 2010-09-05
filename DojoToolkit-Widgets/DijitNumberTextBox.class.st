"
NumberTextBox is a textbox for entering and displaying numbers, supporting the following main features: 1. Enforce minimum/maximum allowed values (as well as enforcing that the user types a number rather than a random string) 2. NLS support (altering roles of comma and dot as 'thousands-separator' and 'decimal-point' depending on locale). 3. Separate modes for editing the value and displaying it, specifically that the thousands separator character (typically comma) disappears when editing but reappears after the field is blurred. 4. Formatting and constraints regarding the number of places (digits after the decimal point) allowed on input, and number of places displayed when blurred (see constraints parameter).
"
Class {
	#name : #DijitNumberTextBox,
	#superclass : #DijitRangeBoundTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitNumberTextBox class >> functionName [

	^ 'dijit.form.NumberTextBox'
]

{ #category : #'functions-generated' }
DijitNumberTextBox >> format: value constraints: constraints pattern: pattern type: type places: places round: round locale: locale fractional: fractional [ 
	"  Replacable function to convert a value to a properly formatted string. "

	self call: 'format' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: places; add: round; add: locale; add: fractional; yourself)
]

{ #category : #'functions-generated' }
DijitNumberTextBox >> parse: value constraints: constraints pattern: pattern type: type locale: locale strict: strict fractional: fractional [ 
	"  Replacable function to convert a formatted string to a value "

	self call: 'parse' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: locale; add: strict; add: fractional; yourself)
]
