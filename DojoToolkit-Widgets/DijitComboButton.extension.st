Extension { #name : #DijitComboButton }

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton >> focus: position [ 
	"  Put focus on this widget "

	self call: 'focus' withArguments: (Array with: position)
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton classSide >> functionName [

	^ 'dijit.form.ComboButton'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton >> optionsTitle [
	"  Text that describes the options menu (accessibility) "

	self access: 'optionsTitle'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboButton >> optionsTitle: aString [
	"  Text that describes the options menu (accessibility) "

	self propertyAt: 'optionsTitle' put: aString
]
