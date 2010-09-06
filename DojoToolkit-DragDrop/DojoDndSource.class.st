"
a Source object, which can be used as a DnD source, or a DnD target
"
Class {
	#name : #DojoDndSource,
	#superclass : #DojoDndSelector,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : '*DojoToolkit-DragDrop' }
DojoDndSource class >> functionName [

	^ 'dojo.dnd.Source'
]

{ #category : #'properties-generated' }
DojoDndSource >> accept [
	
	self access: 'accept'
]

{ #category : #'properties-generated' }
DojoDndSource >> accept: aJsObject [
	
	self propertyAt: 'accept' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> before [
	
	self access: 'before'
]

{ #category : #'properties-generated' }
DojoDndSource >> before: aJsObject [
	
	self propertyAt: 'before' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndSource >> checkAcceptance: source nodes: nodes [ 
	"  checks if the target can accept nodes from this source "

	self call: 'checkAcceptance' withArguments: (Array with: source with: nodes)
]

{ #category : #'properties-generated' }
DojoDndSource >> copyOnly [
	
	self access: 'copyOnly'
]

{ #category : #'properties-generated' }
DojoDndSource >> copyOnly: aJsObject [
	
	self propertyAt: 'copyOnly' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndSource >> copyState: keyPressed self: myself [ 
	"  Returns true if we need to copy items, false to move.
	It is separated to be overwritten dynamically, if needed. "

	self call: 'copyState' withArguments: (Array with: keyPressed with: myself )
]

{ #category : #'properties-generated' }
DojoDndSource >> delay [
	
	self access: 'delay'
]

{ #category : #'properties-generated' }
DojoDndSource >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : #'properties-generated' }
DojoDndSource >> generateText [
	
	self access: 'generateText'
]

{ #category : #'properties-generated' }
DojoDndSource >> generateText: aJsObject [
	
	self propertyAt: 'generateText' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> horizontal [
	
	self access: 'horizontal'
]

{ #category : #'properties-generated' }
DojoDndSource >> horizontal: aJsObject [
	
	self propertyAt: 'horizontal' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> isDragging [
	
	self access: 'isDragging'
]

{ #category : #'properties-generated' }
DojoDndSource >> isDragging: aJsObject [
	
	self propertyAt: 'isDragging' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> isSource [
	
	self access: 'isSource'
]

{ #category : #'properties-generated' }
DojoDndSource >> isSource: aJsObject [
	
	self propertyAt: 'isSource' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> mouseDown [
	
	self access: 'mouseDown'
]

{ #category : #'properties-generated' }
DojoDndSource >> mouseDown: aJsObject [
	
	self propertyAt: 'mouseDown' put: aJsObject
]

{ #category : #'events-generated' }
DojoDndSource >> onDndCancel: anObject [
	"  topic event processor for /dnd/cancel, called to cancel the DnD operation "

	self eventAt: 'onDndCancel' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndSource >> onDndDrop: anObject [
	"  topic event processor for /dnd/drop, called to finish the DnD operation "

	self eventAt: 'onDndDrop' put: (anObject asFunction: #(#source #nodes #copy #target))
]

{ #category : #'events-generated' }
DojoDndSource >> onDndSourceOver: source [
	"  topic event processor for /dnd/source/over, called when detected a current source "

	self eventAt: 'onDndSourceOver' put: (source asFunction: #(#source))
]

{ #category : #'events-generated' }
DojoDndSource >> onDndStart: anObject [
	"  topic event processor for /dnd/start, called to initiate the DnD operation "

	self eventAt: 'onDndStart' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoDndSource >> onDraggingOut: anObject [
	"  called during the active DnD operation, when items are dragged away from this target, and it is not disabled "

	self eventAt: 'onDraggingOut' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndSource >> onDraggingOver: anObject [
	"  called during the active DnD operation, when items are dragged over this target, and it is not disabled "

	self eventAt: 'onDraggingOver' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndSource >> onDrop: anObject [
	"  called only on the current target, when drop is performed "

	self eventAt: 'onDrop' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoDndSource >> onDropExternal: anObject [
	"  called only on the current target, when drop is performed from an external source "

	self eventAt: 'onDropExternal' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoDndSource >> onDropInternal: anObject [
	"  called only on the current target, when drop is performed from the same target/source "

	self eventAt: 'onDropInternal' put: (anObject asFunction: #(#nodes #copy))
]

{ #category : #'events-generated' }
DojoDndSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DojoDndSource >> selfAccept [
	
	self access: 'selfAccept'
]

{ #category : #'properties-generated' }
DojoDndSource >> selfAccept: aJsObject [
	
	self propertyAt: 'selfAccept' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> selfCopy [
	
	self access: 'selfCopy'
]

{ #category : #'properties-generated' }
DojoDndSource >> selfCopy: aJsObject [
	
	self propertyAt: 'selfCopy' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> sourceState [
	
	self access: 'sourceState'
]

{ #category : #'properties-generated' }
DojoDndSource >> sourceState: aString [
	
	self propertyAt: 'sourceState' put: aString
]

{ #category : #'properties-generated' }
DojoDndSource >> targetAnchor [
	
	self access: 'targetAnchor'
]

{ #category : #'properties-generated' }
DojoDndSource >> targetAnchor: aJsObject [
	
	self propertyAt: 'targetAnchor' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> targetBox [
	
	self access: 'targetBox'
]

{ #category : #'properties-generated' }
DojoDndSource >> targetBox: aJsObject [
	
	self propertyAt: 'targetBox' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSource >> targetState [
	
	self access: 'targetState'
]

{ #category : #'properties-generated' }
DojoDndSource >> targetState: aString [
	
	self propertyAt: 'targetState' put: aString
]

{ #category : #'properties-generated' }
DojoDndSource >> topics [
	
	self access: 'topics'
]

{ #category : #'properties-generated' }
DojoDndSource >> topics: anArray [
	
	self propertyAt: 'topics' put: anArray
]

{ #category : #'properties-generated' }
DojoDndSource >> withHandles [
	
	self access: 'withHandles'
]

{ #category : #'properties-generated' }
DojoDndSource >> withHandles: aJsObject [
	
	self propertyAt: 'withHandles' put: aJsObject
]
