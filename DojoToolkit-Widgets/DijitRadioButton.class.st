"
Same as an HTML radio, but with fancy styling.
"
Class {
	#name : #DijitRadioButton,
	#superclass : #DijitCheckBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitRadioButton class >> functionName [

	^ 'dijit.form.RadioButton'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRadioButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]