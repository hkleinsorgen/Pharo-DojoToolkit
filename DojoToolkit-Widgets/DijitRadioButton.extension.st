Extension { #name : #DijitRadioButton }

{ #category : '*DojoToolkit-Widgets' }
DijitRadioButton classSide >> functionName [

	^ 'dijit.form.RadioButton'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRadioButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]
