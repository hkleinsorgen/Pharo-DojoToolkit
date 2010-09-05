"
an object, which makes a node follow the mouse. Used as a default mover, and as a base class for custom movers.
"
Class {
	#name : #DojoMover,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoMover class >> functionName [

	^ 'dojo.dnd.Mover'
]

{ #category : #'functions-generated' }
DojoMover >> destroy [
	"  stops the move, deletes all references, so the object can be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoMover >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoMover >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'properties-generated' }
DojoMover >> host [
	"  object which implements the functionality of the move, and defines proper events (onMoveStart and onMoveStop) "

	self access: 'host'
]

{ #category : #'properties-generated' }
DojoMover >> host: aJsObject [
	"  object which implements the functionality of the move, and defines proper events (onMoveStart and onMoveStop) "

	self propertyAt: 'host' put: aJsObject
]

{ #category : #'properties-generated' }
DojoMover >> mouseButton [
	
	self access: 'mouseButton'
]

{ #category : #'properties-generated' }
DojoMover >> mouseButton: aJsObject [
	
	self propertyAt: 'mouseButton' put: aJsObject
]

{ #category : #'events-generated' }
DojoMover >> onFirstMove: e [
	"  makes the node absolute; it is meant to be called only once.
	relative and absolutely positioned nodes are assumed to use pixel units "

	self eventAt: 'onFirstMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMover >> onMouseMove: e [
	"  event processor for onmousemove "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMover >> onMouseUp: e [
	
	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]
