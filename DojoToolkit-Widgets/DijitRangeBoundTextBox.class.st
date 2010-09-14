"
Base class for textbox form widgets which defines a range of valid values.
"
Class {
	#name : #DijitRangeBoundTextBox,
	#superclass : #DijitMappedTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitRangeBoundTextBox class >> functionName [

	^ 'dijit.form.RangeBoundTextBox'
]

{ #category : #'functions-generated' }
DijitRangeBoundTextBox >> isInRange: isFocused [ 
	"  Tests if the value is in the min/max range specified in constraints "

	self call: 'isInRange' withArguments: (Array with: isFocused)
]

{ #category : #'function overrides-generated' }
DijitRangeBoundTextBox >> overrideRangeCheck: aFunction [
	"  Overridable function used to validate the range of the numeric input value. "

	self override: 'rangeCheck' with: (aFunction asFunction: #(#primitive #constraints #min #max))
]

{ #category : #'functions-generated' }
DijitRangeBoundTextBox >> rangeCheck: primitive constraints: constraints min: min max: max [ 
	"  Overridable function used to validate the range of the numeric input value. "

	self call: 'rangeCheck' withArguments: (OrderedCollection new add: primitive; add: constraints; add: min; add: max; yourself)
]

{ #category : #'properties-generated' }
DijitRangeBoundTextBox >> rangeMessage [
	"  The message to display if value is out-of-range "

	self access: 'rangeMessage'
]

{ #category : #'properties-generated' }
DijitRangeBoundTextBox >> rangeMessage: aString [
	"  The message to display if value is out-of-range "

	self propertyAt: 'rangeMessage' put: aString
]
