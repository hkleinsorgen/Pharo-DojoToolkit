"
A button that can be in two states (checked or not). Can be base class for things like tabs or checkbox or radio buttons
"
Class {
	#name : #DijitToggleButton,
	#superclass : #DijitButton,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton class >> functionName [

	^ 'dijit.form.ToggleButton'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton >> checked [
	"  Corresponds to the native HTML <input> element's attribute.
	In markup, specified as 'checked='checked'' or just 'checked'.
	True if the button is depressed, or the checkbox is checked, or the radio button is selected, etc. "

	self access: 'checked'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton >> checked: aBoolean [
	"  Corresponds to the native HTML <input> element's attribute.
	In markup, specified as 'checked='checked'' or just 'checked'.
	True if the button is depressed, or the checkbox is checked, or the radio button is selected, etc. "

	self propertyAt: 'checked' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton >> reset [
	"  Reset the widget's value to what it was at initialization time "

	self call: 'reset'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToggleButton >> setChecked: checked [ 
	"  Deprecated.
	Use set('checked', true/false) instead. "

	self call: 'setChecked' withArguments: (Array with: checked)
]
