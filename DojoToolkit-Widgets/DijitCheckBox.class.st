"
User interacts with real html inputs. On onclick (which occurs by mouse click, space-bar, or using the arrow keys to switch the selected radio button), we update the state of the checkbox/radio. There are two modes: 1. High contrast mode 2. Normal mode In case 1, the regular html inputs are shown and used by the user. In case 2, the regular html inputs are invisible but still used by the user. They are turned quasi-invisible and overlay the background-image.
"
Class {
	#name : #DijitCheckBox,
	#superclass : #DijitToggleButton,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitCheckBox class >> functionName [

	^ 'dijit.form.CheckBox'
]

{ #category : #'properties-generated' }
DijitCheckBox >> checkedAttrSetting [
	
	self access: 'checkedAttrSetting'
]

{ #category : #'properties-generated' }
DijitCheckBox >> checkedAttrSetting: aJsObject [
	
	self propertyAt: 'checkedAttrSetting' put: aJsObject
]

{ #category : #'events-generated' }
DijitCheckBox >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DijitCheckBox >> readOnly [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self access: 'readOnly'
]

{ #category : #'properties-generated' }
DijitCheckBox >> readOnly: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'readOnly'.
	Similar to disabled except readOnly form values are submitted. "

	self propertyAt: 'readOnly' put: aBoolean
]
