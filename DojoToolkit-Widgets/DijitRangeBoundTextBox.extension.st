Extension { #name : #DijitRangeBoundTextBox }

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox classSide >> functionName [

	^ 'dijit.form.RangeBoundTextBox'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox >> isInRange: isFocused [ 
	"  Tests if the value is in the min/max range specified in constraints "

	self call: 'isInRange' withArguments: (Array with: isFocused)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox >> overrideRangeCheck: aFunction [
	"  Overridable function used to validate the range of the numeric input value. "

	self override: 'rangeCheck' with: (aFunction asFunction: #(#primitive #constraints #min #max))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox >> rangeCheck: primitive constraints: constraints min: min max: max [ 
	"  Overridable function used to validate the range of the numeric input value. "

	self call: 'rangeCheck' withArguments: (OrderedCollection new add: primitive; add: constraints; add: min; add: max; yourself)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox >> rangeMessage [
	"  The message to display if value is out-of-range "

	self access: 'rangeMessage'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRangeBoundTextBox >> rangeMessage: aString [
	"  The message to display if value is out-of-range "

	self propertyAt: 'rangeMessage' put: aString
]
