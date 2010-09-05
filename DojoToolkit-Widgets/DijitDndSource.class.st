"
Handles drag and drop operations (as a source or a target) for dijit.Tree
"
Class {
	#name : #DijitDndSource,
	#superclass : #DijitDndSelector,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDndSource class >> functionName [

	^ 'dijit.tree.dndSource'
]

{ #category : #'properties-generated' }
DijitDndSource >> accept [
	"  List of accepted types (text strings) for the Tree; defaults to ['text'] "

	self access: 'accept'
]

{ #category : #'properties-generated' }
DijitDndSource >> accept: aJsObject [
	"  List of accepted types (text strings) for the Tree; defaults to ['text'] "

	self propertyAt: 'accept' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSource >> betweenThreshold [
	"  Distance from upper/lower edge of node to allow drop to reorder nodes "

	self access: 'betweenThreshold'
]

{ #category : #'properties-generated' }
DijitDndSource >> betweenThreshold: aNumber [
	"  Distance from upper/lower edge of node to allow drop to reorder nodes "

	self propertyAt: 'betweenThreshold' put: aNumber
]

{ #category : #'functions-generated' }
DijitDndSource >> checkAcceptance: source nodes: nodes [ 
	"  Checks if the target can accept nodes from this source "

	self call: 'checkAcceptance' withArguments: (Array with: source with: nodes)
]

{ #category : #'functions-generated' }
DijitDndSource >> checkItemAcceptance: target source: source position: position [ 
	"  In the base case, this is called to check if target can become a child of source.
	When betweenThreshold is set, position='before' or 'after' means that we are asking if the source node can be dropped before/after the target node "

	self call: 'checkItemAcceptance' withArguments: (Array with: target with: source with: position)
]

{ #category : #'properties-generated' }
DijitDndSource >> copyOnly [
	"  Copy items, if true, use a state of Ctrl key otherwise "

	self access: 'copyOnly'
]

{ #category : #'properties-generated' }
DijitDndSource >> copyOnly: aBoolean [
	"  Copy items, if true, use a state of Ctrl key otherwise "

	self propertyAt: 'copyOnly' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDndSource >> copyState: keyPressed [ 
	"  Returns true, if we need to copy items, false to move.
	It is separated to be overwritten dynamically, if needed. "

	self call: 'copyState' withArguments: (Array with: keyPressed)
]

{ #category : #'properties-generated' }
DijitDndSource >> dragThreshold [
	"  The move delay in pixels before detecting a drag; 5 by default "

	self access: 'dragThreshold'
]

{ #category : #'properties-generated' }
DijitDndSource >> dragThreshold: aNumber [
	"  The move delay in pixels before detecting a drag; 5 by default "

	self propertyAt: 'dragThreshold' put: aNumber
]

{ #category : #'properties-generated' }
DijitDndSource >> dropPosition [
	
	self access: 'dropPosition'
]

{ #category : #'properties-generated' }
DijitDndSource >> dropPosition: aString [
	
	self propertyAt: 'dropPosition' put: aString
]

{ #category : #'properties-generated' }
DijitDndSource >> isDragging [
	
	self access: 'isDragging'
]

{ #category : #'properties-generated' }
DijitDndSource >> isDragging: aJsObject [
	
	self propertyAt: 'isDragging' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSource >> isSource [
	"  Can be used as a DnD source. "

	self access: 'isSource'
]

{ #category : #'properties-generated' }
DijitDndSource >> isSource: aBoolean [
	"  Can be used as a DnD source. "

	self propertyAt: 'isSource' put: aBoolean
]

{ #category : #'functions-generated' }
DijitDndSource >> itemCreator: nodes target: target source: source [ 
	"  For each node in nodes[], which came from source, create a hash of name/value pairs to be passed to Tree.model.newItem().
	Returns array of those hashes "

	self call: 'itemCreator' withArguments: (Array with: nodes with: target with: source)
]

{ #category : #'properties-generated' }
DijitDndSource >> mouseButton [
	
	self access: 'mouseButton'
]

{ #category : #'properties-generated' }
DijitDndSource >> mouseButton: aJsObject [
	
	self propertyAt: 'mouseButton' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSource >> mouseDown [
	
	self access: 'mouseDown'
]

{ #category : #'properties-generated' }
DijitDndSource >> mouseDown: aJsObject [
	
	self propertyAt: 'mouseDown' put: aJsObject
]

{ #category : #'events-generated' }
DijitDndSource >> onDndCancel: anObject [
	"  Topic event processor for /dnd/cancel, called to cancel the DnD operation "

	self eventAt: 'onDndCancel' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitDndSource >> onDndDrop: anObject [
	"  Updates data store items according to where node was dragged from and dropped to.
	The tree will then respond to those data store updates and redraw itself "

	self eventAt: 'onDndDrop' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DijitDndSource >> onDndSourceOver: source [
	"  Topic event processor for /dnd/source/over, called when detected a current source. "

	self eventAt: 'onDndSourceOver' put: (source asFunction: #(#source))
]

{ #category : #'events-generated' }
DijitDndSource >> onDndStart: anObject [
	"  Topic event processor for /dnd/start, called to initiate the DnD operation "

	self eventAt: 'onDndStart' put: (anObject asFunction: #(#source #nodes #copy))
]

{ #category : #'events-generated' }
DijitDndSource >> onMouseDown: e [
	"  Event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitDndSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitDndSource >> onMouseOut: anObject [
	"  Called when mouse is moved away from a TreeNode "

	self eventAt: 'onMouseOut' put: (anObject asFunction: #(#widget #event))
]

{ #category : #'events-generated' }
DijitDndSource >> onMouseUp: e [
	"  Event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitDndSource >> onOutEvent: anObject [
	"  This function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitDndSource >> onOverEvent: anObject [
	"  This function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitDndSource >> sourceState [
	
	self access: 'sourceState'
]

{ #category : #'properties-generated' }
DijitDndSource >> sourceState: aString [
	
	self propertyAt: 'sourceState' put: aString
]

{ #category : #'properties-generated' }
DijitDndSource >> targetAnchor [
	
	self access: 'targetAnchor'
]

{ #category : #'properties-generated' }
DijitDndSource >> targetAnchor: aJsObject [
	
	self propertyAt: 'targetAnchor' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSource >> targetBox [
	
	self access: 'targetBox'
]

{ #category : #'properties-generated' }
DijitDndSource >> targetBox: aJsObject [
	
	self propertyAt: 'targetBox' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSource >> targetState [
	
	self access: 'targetState'
]

{ #category : #'properties-generated' }
DijitDndSource >> targetState: aString [
	
	self propertyAt: 'targetState' put: aString
]

{ #category : #'properties-generated' }
DijitDndSource >> topics [
	
	self access: 'topics'
]

{ #category : #'properties-generated' }
DijitDndSource >> topics: anArray [
	
	self propertyAt: 'topics' put: anArray
]
