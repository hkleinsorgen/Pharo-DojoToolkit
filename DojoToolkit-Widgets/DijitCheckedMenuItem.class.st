"
A checkbox-like menu item for toggling on and off
"
Class {
	#name : #DijitCheckedMenuItem,
	#superclass : #DijitMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitCheckedMenuItem class >> functionName [

	^ 'dijit.CheckedMenuItem'
]

{ #category : #'properties-generated' }
DijitCheckedMenuItem >> checked [
	"  Our checked state "

	self access: 'checked'
]

{ #category : #'properties-generated' }
DijitCheckedMenuItem >> checked: aBoolean [
	"  Our checked state "

	self propertyAt: 'checked' put: aBoolean
]

{ #category : #'events-generated' }
DijitCheckedMenuItem >> onChange: checked [
	"  User defined function to handle check/uncheck events "

	self eventAt: 'onChange' put: (checked asFunction: #(#checked))
]

{ #category : #'events-generated' }
DijitCheckedMenuItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
