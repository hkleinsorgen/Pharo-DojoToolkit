"
Buttons can display a label, an icon, or both. A label should always be specified (through innerHTML) or the label attribute. It can be hidden via showLabel=false.
"
Class {
	#name : #DijitButton,
	#superclass : #DijitFormWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitButton class >> functionName [

	^ 'dijit.form.Button'
]

{ #category : #'events-generated' }
DijitButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DijitButton >> setLabel: content [ 
	"  Deprecated.
	Use set('label', ...) instead. "

	self call: 'setLabel' withArguments: (Array with: content)
]

{ #category : #'properties-generated' }
DijitButton >> showLabel [
	"  Set this to true to hide the label text and display only the icon.
	(If showLabel=false then iconClass must be specified.) Especially useful for toolbars.
	If showLabel=true, the label will become the title (a.k.a.
	tooltip/hint) of the icon.
	The exception case is for computers in high-contrast mode, where the label will still be displayed, since the icon doesn't appear. "

	self access: 'showLabel'
]

{ #category : #'properties-generated' }
DijitButton >> showLabel: aBoolean [
	"  Set this to true to hide the label text and display only the icon.
	(If showLabel=false then iconClass must be specified.) Especially useful for toolbars.
	If showLabel=true, the label will become the title (a.k.a.
	tooltip/hint) of the icon.
	The exception case is for computers in high-contrast mode, where the label will still be displayed, since the icon doesn't appear. "

	self propertyAt: 'showLabel' put: aBoolean
]
