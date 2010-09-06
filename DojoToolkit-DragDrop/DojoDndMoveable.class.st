"
an object, which makes a node moveable
"
Class {
	#name : #DojoDndMoveable,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : '*DojoToolkit-DragDrop' }
DojoDndMoveable class >> functionName [

	^ 'dojo.dnd.Moveable'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> delay [
	
	self access: 'delay'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : #'functions-generated' }
DojoDndMoveable >> destroy [
	"  stops watching for possible move, deletes all references, so the object can be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'properties-generated' }
DojoDndMoveable >> handle [
	
	self access: 'handle'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> handle: aJsObject [
	
	self propertyAt: 'handle' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndMoveable >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : #'properties-generated' }
DojoDndMoveable >> mover [
	
	self access: 'mover'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> mover: aJsObject [
	
	self propertyAt: 'mover' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndMoveable >> node [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self access: 'node'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> node: aNode [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : #'events-generated' }
DojoDndMoveable >> onDragDetected: e [
	"  called when the drag is detected; responsible for creation of the mover "

	self eventAt: 'onDragDetected' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onFirstMove: anObject [
	"  called during the very first move notification; can be used to initialize coordinates, can be overwritten. "

	self eventAt: 'onFirstMove' put: (anObject asFunction: #(#mover #event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMouseDown: e [
	"  event processor for onmousedown, creates a Mover for the node "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMouseMove: e [
	"  event processor for onmousemove, used only for delayed drags "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMouseUp: e [
	"  event processor for onmouseup, used only for delayed drags "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMove: anObject [
	"  called during every move notification; should actually move the node; can be overwritten. "

	self eventAt: 'onMove' put: (anObject asFunction: #(#mover #leftTop #event))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMoveStart: mover [
	"  called before every move operation "

	self eventAt: 'onMoveStart' put: (mover asFunction: #(#mover))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMoveStop: mover [
	"  called after every move operation "

	self eventAt: 'onMoveStop' put: (mover asFunction: #(#mover))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMoved: anObject [
	"  called after every incremental move; can be overwritten. "

	self eventAt: 'onMoved' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onMoving: anObject [
	"  called before every incremental move; can be overwritten. "

	self eventAt: 'onMoving' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : #'events-generated' }
DojoDndMoveable >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DojoDndMoveable >> skip [
	
	self access: 'skip'
]

{ #category : #'properties-generated' }
DojoDndMoveable >> skip: aJsObject [
	
	self propertyAt: 'skip' put: aJsObject
]
