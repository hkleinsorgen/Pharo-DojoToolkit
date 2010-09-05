"
A combination button and drop-down button. Users can click one side to 'press' the button, or click an arrow icon to display the drop down.
"
Class {
	#name : #DijitComboButton,
	#superclass : #DijitDropDownButton,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton class >> functionName [

	^ 'dijit.form.ComboButton'
]

{ #category : #'functions-generated' }
DijitComboButton >> focus: position [ 
	"  Put focus on this widget "

	self call: 'focus' withArguments: (Array with: position)
]

{ #category : #'events-generated' }
DijitComboButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DijitComboButton >> optionsTitle [
	"  Text that describes the options menu (accessibility) "

	self access: 'optionsTitle'
]

{ #category : #'properties-generated' }
DijitComboButton >> optionsTitle: aString [
	"  Text that describes the options menu (accessibility) "

	self propertyAt: 'optionsTitle' put: aString
]
