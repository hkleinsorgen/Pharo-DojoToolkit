"
a Target object, which can be used as a DnD target
"
Class {
	#name : #DojoDndTarget,
	#superclass : #DojoDndSource,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : #'accessing-generated' }
DojoDndTarget class >> functionName [

	^ 'dojo.dnd.Target'
]

{ #category : #'events-generated' }
DojoDndTarget >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndTarget >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndTarget >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndTarget >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndTarget >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]
