"
a Source object, which can be used as a DnD source, or a DnD target
"
Class {
	#name : #DojoSource,
	#superclass : #DojoSelector,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoSource class >> functionName [

	^ 'dojo.dnd.Source'
]

{ #category : #'properties-generated' }
DojoSource >> accept [
	
	self access: 'accept'
]

{ #category : #'properties-generated' }
DojoSource >> accept: aJsObject [
	
	self propertyAt: 'accept' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> before [
	
	self access: 'before'
]

{ #category : #'properties-generated' }
DojoSource >> before: aJsObject [
	
	self propertyAt: 'before' put: aJsObject
]

{ #category : #'functions-generated' }
DojoSource >> checkAcceptance: source nodes: nodes [ 
	"  checks if the target can accept nodes from this source "

	self call: 'checkAcceptance' withArguments: (Array with: source with: nodes)
]

{ #category : #'properties-generated' }
DojoSource >> copyOnly [
	
	self access: 'copyOnly'
]

{ #category : #'properties-generated' }
DojoSource >> copyOnly: aJsObject [
	
	self propertyAt: 'copyOnly' put: aJsObject
]

{ #category : #'functions-generated' }
DojoSource >> copyState: keyPressed self: myself [ 
	"  Returns true if we need to copy items, false to move.
	It is separated to be overwritten dynamically, if needed. "

	self call: 'copyState' withArguments: (Array with: keyPressed with: myself )
]

{ #category : #'properties-generated' }
DojoSource >> delay [
	
	self access: 'delay'
]

{ #category : #'properties-generated' }
DojoSource >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : #'properties-generated' }
DojoSource >> generateText [
	
	self access: 'generateText'
]

{ #category : #'properties-generated' }
DojoSource >> generateText: aJsObject [
	
	self propertyAt: 'generateText' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> horizontal [
	
	self access: 'horizontal'
]

{ #category : #'properties-generated' }
DojoSource >> horizontal: aJsObject [
	
	self propertyAt: 'horizontal' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> isDragging [
	
	self access: 'isDragging'
]

{ #category : #'properties-generated' }
DojoSource >> isDragging: aJsObject [
	
	self propertyAt: 'isDragging' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> isSource [
	
	self access: 'isSource'
]

{ #category : #'properties-generated' }
DojoSource >> isSource: aJsObject [
	
	self propertyAt: 'isSource' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> mouseDown [
	
	self access: 'mouseDown'
]

{ #category : #'properties-generated' }
DojoSource >> mouseDown: aJsObject [
	
	self propertyAt: 'mouseDown' put: aJsObject
]

{ #category : #'events-generated' }
DojoSource >> onDndCancel: anObject [
	"  topic event processor for /dnd/cancel, called to cancel the DnD operation "

	self eventAt: 'onDndCancel' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoSource >> onDndDrop: anObject [
	"  topic event processor for /dnd/drop, called to finish the DnD operation "

	self eventAt: 'onDndDrop' put: (anObject asFunction: #(#source #nodes #copy #target))
]

{ #category : #'events-generated' }
DojoSource >> onDndSourceOver: source [
	"  topic event processor for /dnd/source/over, called when detected a current source "

	self eventAt: 'onDndSourceOver' put: (source asFunction: #(#source))
]

{ #category : #'events-generated' }
DojoSource >> onDndStart: anObject [
	"  topic event processor for /dnd/start, called to initiate the DnD operation "

	self eventAt: 'onDndStart' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoSource >> onDraggingOut: anObject [
	"  called during the active DnD operation, when items are dragged away from this target, and it is not disabled "

	self eventAt: 'onDraggingOut' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoSource >> onDraggingOver: anObject [
	"  called during the active DnD operation, when items are dragged over this target, and it is not disabled "

	self eventAt: 'onDraggingOver' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoSource >> onDrop: anObject [
	"  called only on the current target, when drop is performed "

	self eventAt: 'onDrop' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoSource >> onDropExternal: anObject [
	"  called only on the current target, when drop is performed from an external source "

	self eventAt: 'onDropExternal' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DojoSource >> onDropInternal: anObject [
	"  called only on the current target, when drop is performed from the same target/source "

	self eventAt: 'onDropInternal' put: (anObject asFunction: #(#nodes #copy))
]

{ #category : #'events-generated' }
DojoSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DojoSource >> selfAccept [
	
	self access: 'selfAccept'
]

{ #category : #'properties-generated' }
DojoSource >> selfAccept: aJsObject [
	
	self propertyAt: 'selfAccept' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> selfCopy [
	
	self access: 'selfCopy'
]

{ #category : #'properties-generated' }
DojoSource >> selfCopy: aJsObject [
	
	self propertyAt: 'selfCopy' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> sourceState [
	
	self access: 'sourceState'
]

{ #category : #'properties-generated' }
DojoSource >> sourceState: aString [
	
	self propertyAt: 'sourceState' put: aString
]

{ #category : #'properties-generated' }
DojoSource >> targetAnchor [
	
	self access: 'targetAnchor'
]

{ #category : #'properties-generated' }
DojoSource >> targetAnchor: aJsObject [
	
	self propertyAt: 'targetAnchor' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> targetBox [
	
	self access: 'targetBox'
]

{ #category : #'properties-generated' }
DojoSource >> targetBox: aJsObject [
	
	self propertyAt: 'targetBox' put: aJsObject
]

{ #category : #'properties-generated' }
DojoSource >> targetState [
	
	self access: 'targetState'
]

{ #category : #'properties-generated' }
DojoSource >> targetState: aString [
	
	self propertyAt: 'targetState' put: aString
]

{ #category : #'properties-generated' }
DojoSource >> topics [
	
	self access: 'topics'
]

{ #category : #'properties-generated' }
DojoSource >> topics: anArray [
	
	self propertyAt: 'topics' put: anArray
]

{ #category : #'properties-generated' }
DojoSource >> withHandles [
	
	self access: 'withHandles'
]

{ #category : #'properties-generated' }
DojoSource >> withHandles: aJsObject [
	
	self propertyAt: 'withHandles' put: aJsObject
]
