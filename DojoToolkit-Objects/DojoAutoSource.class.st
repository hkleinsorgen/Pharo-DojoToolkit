"
a source that syncs its DnD nodes by default
"
Class {
	#name : #DojoAutoSource,
	#superclass : #DojoSource,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource class >> functionName [

	^ 'dojo.dnd.AutoSource'
]

{ #category : #'events-generated' }
DojoAutoSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoAutoSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoAutoSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoAutoSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoAutoSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]
