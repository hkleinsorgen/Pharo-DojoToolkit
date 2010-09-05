Extension { #name : #DojoSource }

{ #category : '*DojoToolkit-Objects' }
DojoSource >> accept [
	
	self access: 'accept'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> accept: aJsObject [
	
	self propertyAt: 'accept' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> before [
	
	self access: 'before'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> before: aJsObject [
	
	self propertyAt: 'before' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> checkAcceptance: source nodes: nodes [ 
	"  checks if the target can accept nodes from this source "

	self call: 'checkAcceptance' withArguments: (Array with: source with: nodes)
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> copyOnly [
	
	self access: 'copyOnly'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> copyOnly: aJsObject [
	
	self propertyAt: 'copyOnly' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> copyState: keyPressed self: myself [ 
	"  Returns true if we need to copy items, false to move.
	It is separated to be overwritten dynamically, if needed. "

	self call: 'copyState' withArguments: (Array with: keyPressed with: myself )
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> delay [
	
	self access: 'delay'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> delay: aNumber [
	
	self propertyAt: 'delay' put: aNumber
]

{ #category : '*DojoToolkit-Objects' }
DojoSource classSide >> functionName [

	^ 'dojo.dnd.Source'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> generateText [
	
	self access: 'generateText'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> generateText: aJsObject [
	
	self propertyAt: 'generateText' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> horizontal [
	
	self access: 'horizontal'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> horizontal: aJsObject [
	
	self propertyAt: 'horizontal' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> isDragging [
	
	self access: 'isDragging'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> isDragging: aJsObject [
	
	self propertyAt: 'isDragging' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> isSource [
	
	self access: 'isSource'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> isSource: aJsObject [
	
	self propertyAt: 'isSource' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> mouseDown [
	
	self access: 'mouseDown'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> mouseDown: aJsObject [
	
	self propertyAt: 'mouseDown' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDndCancel: anObject [
	"  topic event processor for /dnd/cancel, called to cancel the DnD operation "

	self eventAt: 'onDndCancel' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDndDrop: anObject [
	"  topic event processor for /dnd/drop, called to finish the DnD operation "

	self eventAt: 'onDndDrop' put: (anObject asFunction: #(#source #nodes #copy #target))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDndSourceOver: source [
	"  topic event processor for /dnd/source/over, called when detected a current source "

	self eventAt: 'onDndSourceOver' put: (source asFunction: #(#source))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDndStart: anObject [
	"  topic event processor for /dnd/start, called to initiate the DnD operation "

	self eventAt: 'onDndStart' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDraggingOut: anObject [
	"  called during the active DnD operation, when items are dragged away from this target, and it is not disabled "

	self eventAt: 'onDraggingOut' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDraggingOver: anObject [
	"  called during the active DnD operation, when items are dragged over this target, and it is not disabled "

	self eventAt: 'onDraggingOver' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDrop: anObject [
	"  called only on the current target, when drop is performed "

	self eventAt: 'onDrop' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDropExternal: anObject [
	"  called only on the current target, when drop is performed from an external source "

	self eventAt: 'onDropExternal' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onDropInternal: anObject [
	"  called only on the current target, when drop is performed from the same target/source "

	self eventAt: 'onDropInternal' put: (anObject asFunction: #(#nodes #copy))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> selfAccept [
	
	self access: 'selfAccept'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> selfAccept: aJsObject [
	
	self propertyAt: 'selfAccept' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> selfCopy [
	
	self access: 'selfCopy'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> selfCopy: aJsObject [
	
	self propertyAt: 'selfCopy' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> sourceState [
	
	self access: 'sourceState'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> sourceState: aString [
	
	self propertyAt: 'sourceState' put: aString
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetAnchor [
	
	self access: 'targetAnchor'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetAnchor: aJsObject [
	
	self propertyAt: 'targetAnchor' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetBox [
	
	self access: 'targetBox'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetBox: aJsObject [
	
	self propertyAt: 'targetBox' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetState [
	
	self access: 'targetState'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> targetState: aString [
	
	self propertyAt: 'targetState' put: aString
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> topics [
	
	self access: 'topics'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> topics: anArray [
	
	self propertyAt: 'topics' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> withHandles [
	
	self access: 'withHandles'
]

{ #category : '*DojoToolkit-Objects' }
DojoSource >> withHandles: aJsObject [
	
	self propertyAt: 'withHandles' put: aJsObject
]
