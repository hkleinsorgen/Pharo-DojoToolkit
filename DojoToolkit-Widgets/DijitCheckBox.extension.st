Extension { #name : #DijitCheckBox }

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox >> checkedAttrSetting [
	
	self access: 'checkedAttrSetting'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox >> checkedAttrSetting: aJsObject [
	
	self propertyAt: 'checkedAttrSetting' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox classSide >> functionName [

	^ 'dijit.form.CheckBox'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox >> readOnly [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self access: 'readOnly'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox >> readOnly: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self propertyAt: 'readOnly' put: aBoolean
]
