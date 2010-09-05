Extension { #name : #DijitFormValueWidget }

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget classSide >> functionName [

	^ 'dijit.form.FormValueWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget >> readOnly [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self access: 'readOnly'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget >> readOnly: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self propertyAt: 'readOnly' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget >> reset [
	"  Reset the widget's value to what it was at initialization time "

	self call: 'reset'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormValueWidget >> undo [
	"  Restore the value to the last value passed to onChange "

	self call: 'undo'
]
