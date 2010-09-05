"
an object, which makes a node moveable
"
Class {
	#name : #DojoMoveable,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoMoveable class >> functionName [

	^ 'dojo.dnd.Moveable'
]

{ #category : #'properties-generated' }
DojoMoveable >> delay [
	
	self access: 'delay'
]

{ #category : #'properties-generated' }
DojoMoveable >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : #'functions-generated' }
DojoMoveable >> destroy [
	"  stops watching for possible move, deletes all references, so the object can be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoMoveable >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoMoveable >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'properties-generated' }
DojoMoveable >> handle [
	
	self access: 'handle'
]

{ #category : #'properties-generated' }
DojoMoveable >> handle: aJsObject [
	
	self propertyAt: 'handle' put: aJsObject
]

{ #category : #'functions-generated' }
DojoMoveable >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : #'properties-generated' }
DojoMoveable >> mover [
	
	self access: 'mover'
]

{ #category : #'properties-generated' }
DojoMoveable >> mover: aJsObject [
	
	self propertyAt: 'mover' put: aJsObject
]

{ #category : #'properties-generated' }
DojoMoveable >> node [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self access: 'node'
]

{ #category : #'properties-generated' }
DojoMoveable >> node: aNode [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : #'events-generated' }
DojoMoveable >> onDragDetected: e [
	"  called when the drag is detected; responsible for creation of the mover "

	self eventAt: 'onDragDetected' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMoveable >> onFirstMove: anObject [
	"  called during the very first move notification; can be used to initialize coordinates, can be overwritten. "

	self eventAt: 'onFirstMove' put: (anObject asFunction: #(#mover #event))
]

{ #category : #'events-generated' }
DojoMoveable >> onMouseDown: e [
	"  event processor for onmousedown, creates a Mover for the node "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMoveable >> onMouseMove: e [
	"  event processor for onmousemove, used only for delayed drags "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMoveable >> onMouseUp: e [
	"  event processor for onmouseup, used only for delayed drags "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoMoveable >> onMove: anObject [
	"  called during every move notification; should actually move the node; can be overwritten. "

	self eventAt: 'onMove' put: (anObject asFunction: #(#mover #leftTop #event))
]

{ #category : #'events-generated' }
DojoMoveable >> onMoveStart: mover [
	"  called before every move operation "

	self eventAt: 'onMoveStart' put: (mover asFunction: #(#mover))
]

{ #category : #'events-generated' }
DojoMoveable >> onMoveStop: mover [
	"  called after every move operation "

	self eventAt: 'onMoveStop' put: (mover asFunction: #(#mover))
]

{ #category : #'events-generated' }
DojoMoveable >> onMoved: anObject [
	"  called after every incremental move; can be overwritten. "

	self eventAt: 'onMoved' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : #'events-generated' }
DojoMoveable >> onMoving: anObject [
	"  called before every incremental move; can be overwritten. "

	self eventAt: 'onMoving' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : #'events-generated' }
DojoMoveable >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DojoMoveable >> skip [
	
	self access: 'skip'
]

{ #category : #'properties-generated' }
DojoMoveable >> skip: aJsObject [
	
	self propertyAt: 'skip' put: aJsObject
]
