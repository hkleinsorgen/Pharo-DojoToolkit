"
Each _FormValueWidget represents a single input value, and has a (possibly hidden) element, to which it serializes it's input value, so that form submission (either normal submission or via FormBind?) works as expected.
"
Class {
	#name : #DijitFormValueWidget,
	#superclass : #DijitFormWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget class >> functionName [

	^ 'dijit.form.FormValueWidget'
]

{ #category : #'properties-generated' }
DijitFormValueWidget >> readOnly [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self access: 'readOnly'
]

{ #category : #'properties-generated' }
DijitFormValueWidget >> readOnly: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self propertyAt: 'readOnly' put: aBoolean
]

{ #category : #'functions-generated' }
DijitFormValueWidget >> reset [
	"  Reset the widget's value to what it was at initialization time "

	self call: 'reset'
]

{ #category : #'functions-generated' }
DijitFormValueWidget >> undo [
	"  Restore the value to the last value passed to onChange "

	self call: 'undo'
]
