"
A dijit.form.NumberTextBox extension to provide keyboard accessible value selection as well as icons for spinning direction. When using the keyboard, the typematic rules apply, meaning holding the key will gradually increase or decrease the value and accelerate.
"
Class {
	#name : #DijitNumberSpinner,
	#superclass : #DijitSpinner,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitNumberSpinner class >> functionName [

	^ 'dijit.form.NumberSpinner'
]

{ #category : #'functions-generated' }
DijitNumberSpinner >> format: value constraints: constraints pattern: pattern type: type places: places round: round locale: locale fractional: fractional [ 
	"  Replacable function to convert a value to a properly formatted string. "

	self call: 'format' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: places; add: round; add: locale; add: fractional; yourself)
]

{ #category : #'functions-generated' }
DijitNumberSpinner >> parse: value constraints: constraints pattern: pattern type: type locale: locale strict: strict fractional: fractional [ 
	"  Replacable function to convert a formatted string to a value "

	self call: 'parse' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: locale; add: strict; add: fractional; yourself)
]
