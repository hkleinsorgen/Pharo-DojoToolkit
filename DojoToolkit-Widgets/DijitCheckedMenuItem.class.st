"
A checkbox-like menu item for toggling on and off
"
Class {
	#name : #DijitCheckedMenuItem,
	#superclass : #DijitMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitCheckedMenuItem class >> functionName [

	^ 'dijit.CheckedMenuItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckedMenuItem >> checked [
	"  Our checked state "

	self access: 'checked'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckedMenuItem >> checked: aBoolean [
	"  Our checked state "

	self propertyAt: 'checked' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckedMenuItem >> onChange: checked [
	"  User defined function to handle check/uncheck events "

	self eventAt: 'onChange' put: (checked asFunction: #(#checked))
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckedMenuItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
