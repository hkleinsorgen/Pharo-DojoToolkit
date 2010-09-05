"
This class basically (conceptually) extends dijit.form.ValidationTextBox. It modifies the template to have up/down arrows, and provides related handling code.
"
Class {
	#name : #DijitSpinner,
	#superclass : #DijitRangeBoundTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner class >> functionName [

	^ 'dijit.form.Spinner'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> adjust: val delta: delta [ 
	"  Overridable function used to adjust a primitive value(Number/Date/...) by the delta amount specified.
	The val is adjusted in a way that makes sense to the object type. "

	self call: 'adjust' withArguments: (Array with: val with: delta)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> defaultTimeout [
	"  Number of milliseconds before a held arrow key or up/down button becomes typematic "

	self access: 'defaultTimeout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> defaultTimeout: aNumber [
	"  Number of milliseconds before a held arrow key or up/down button becomes typematic "

	self propertyAt: 'defaultTimeout' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> largeDelta [
	"  Adjust the value by this much when spinning using the PgUp/Dn keys "

	self access: 'largeDelta'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> largeDelta: aNumber [
	"  Adjust the value by this much when spinning using the PgUp/Dn keys "

	self propertyAt: 'largeDelta' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> minimumTimeout [
	"  minimum number of milliseconds that typematic event fires when held key or button is held "

	self access: 'minimumTimeout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> minimumTimeout: aNumber [
	"  minimum number of milliseconds that typematic event fires when held key or button is held "

	self propertyAt: 'minimumTimeout' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> overrideAdjust: aFunction [
	"  Overridable function used to adjust a primitive value(Number/Date/...) by the delta amount specified.
	The val is adjusted in a way that makes sense to the object type. "

	self override: 'adjust' with: (aFunction asFunction: #(#val #delta))
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> smallDelta [
	"  Adjust the value by this much when spinning using the arrow keys/buttons "

	self access: 'smallDelta'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> smallDelta: aNumber [
	"  Adjust the value by this much when spinning using the arrow keys/buttons "

	self propertyAt: 'smallDelta' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> timeoutChangeRate [
	"  Fraction of time used to change the typematic timer between events.
	1.0 means that each typematic event fires at defaultTimeout intervals.
	< 1.0 means that each typematic event fires at an increasing faster rate. "

	self access: 'timeoutChangeRate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSpinner >> timeoutChangeRate: aNumber [
	"  Fraction of time used to change the typematic timer between events.
	1.0 means that each typematic event fires at defaultTimeout intervals.
	< 1.0 means that each typematic event fires at an increasing faster rate. "

	self propertyAt: 'timeoutChangeRate' put: aNumber
]