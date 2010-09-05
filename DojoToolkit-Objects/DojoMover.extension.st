Extension { #name : #DojoMover }

{ #category : '*DojoToolkit-Objects' }
DojoMover >> destroy [
	"  stops the move, deletes all references, so the object can be garbage-collected "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> events [
	
	self access: 'events'
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoMover classSide >> functionName [

	^ 'dojo.dnd.Mover'
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> host [
	"  object which implements the functionality of the move, and defines proper events (onMoveStart and onMoveStop) "

	self access: 'host'
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> host: aJsObject [
	"  object which implements the functionality of the move, and defines proper events (onMoveStart and onMoveStop) "

	self propertyAt: 'host' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> mouseButton [
	
	self access: 'mouseButton'
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> mouseButton: aJsObject [
	
	self propertyAt: 'mouseButton' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> onFirstMove: e [
	"  makes the node absolute; it is meant to be called only once.
	relative and absolutely positioned nodes are assumed to use pixel units "

	self eventAt: 'onFirstMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> onMouseMove: e [
	"  event processor for onmousemove "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMover >> onMouseUp: e [
	
	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]
