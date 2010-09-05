Extension { #name : #DojoMoveable }

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> delay [
	
	self access: 'delay'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> destroy [
	"  stops watching for possible move, deletes all references, so the object can be garbage-collected "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> events [
	
	self access: 'events'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable classSide >> functionName [

	^ 'dojo.dnd.Moveable'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> handle [
	
	self access: 'handle'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> handle: aJsObject [
	
	self propertyAt: 'handle' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> mover [
	
	self access: 'mover'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> mover: aJsObject [
	
	self propertyAt: 'mover' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> node [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self access: 'node'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> node: aNode [
	"  a node (or node's id) to be moved params: dojo.dnd.__MoveableArgs? optional parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onDragDetected: e [
	"  called when the drag is detected; responsible for creation of the mover "

	self eventAt: 'onDragDetected' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onFirstMove: anObject [
	"  called during the very first move notification; can be used to initialize coordinates, can be overwritten. "

	self eventAt: 'onFirstMove' put: (anObject asFunction: #(#mover #event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMouseDown: e [
	"  event processor for onmousedown, creates a Mover for the node "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMouseMove: e [
	"  event processor for onmousemove, used only for delayed drags "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMouseUp: e [
	"  event processor for onmouseup, used only for delayed drags "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMove: anObject [
	"  called during every move notification; should actually move the node; can be overwritten. "

	self eventAt: 'onMove' put: (anObject asFunction: #(#mover #leftTop #event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMoveStart: mover [
	"  called before every move operation "

	self eventAt: 'onMoveStart' put: (mover asFunction: #(#mover))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMoveStop: mover [
	"  called after every move operation "

	self eventAt: 'onMoveStop' put: (mover asFunction: #(#mover))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMoved: anObject [
	"  called after every incremental move; can be overwritten. "

	self eventAt: 'onMoved' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onMoving: anObject [
	"  called before every incremental move; can be overwritten. "

	self eventAt: 'onMoving' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> skip [
	
	self access: 'skip'
]

{ #category : '*DojoToolkit-Objects' }
DojoMoveable >> skip: aJsObject [
	
	self propertyAt: 'skip' put: aJsObject
]
