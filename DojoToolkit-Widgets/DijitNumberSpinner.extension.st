Extension { #name : #DijitNumberSpinner }

{ #category : '*DojoToolkit-Widgets' }
DijitNumberSpinner >> format: value constraints: constraints pattern: pattern type: type places: places round: round locale: locale fractional: fractional [ 
	"  Replacable function to convert a value to a properly formatted string. "

	self call: 'format' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: places; add: round; add: locale; add: fractional; yourself)
]

{ #category : '*DojoToolkit-Widgets' }
DijitNumberSpinner classSide >> functionName [

	^ 'dijit.form.NumberSpinner'
]

{ #category : '*DojoToolkit-Widgets' }
DijitNumberSpinner >> parse: value constraints: constraints pattern: pattern type: type locale: locale strict: strict fractional: fractional [ 
	"  Replacable function to convert a formatted string to a value "

	self call: 'parse' withArguments: (OrderedCollection new add: value; add: constraints; add: pattern; add: type; add: locale; add: strict; add: fractional; yourself)
]
