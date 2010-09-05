"
a Target object, which can be used as a DnD target
"
Class {
	#name : #DojoTarget,
	#superclass : #DojoSource,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoTarget class >> functionName [

	^ 'dojo.dnd.Target'
]

{ #category : '*DojoToolkit-Objects' }
DojoTarget >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoTarget >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoTarget >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoTarget >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoTarget >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]