"
a source that syncs its DnD nodes by default
"
Class {
	#name : #DojoDndAutoSource,
	#superclass : #DojoDndSource,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : '*DojoToolkit-DragDrop' }
DojoDndAutoSource class >> functionName [

	^ 'dojo.dnd.AutoSource'
]

{ #category : #'events-generated' }
DojoDndAutoSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndAutoSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndAutoSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndAutoSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndAutoSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]
