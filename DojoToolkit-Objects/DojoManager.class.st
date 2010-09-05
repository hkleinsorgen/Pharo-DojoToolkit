"
the manager of DnD operations (usually a singleton)
"
Class {
	#name : #DojoManager,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoManager class >> functionName [

	^ 'dojo.dnd.Manager'
]

{ #category : #'properties-generated' }
DojoManager >> avatar [
	
	self access: 'avatar'
]

{ #category : #'properties-generated' }
DojoManager >> avatar: aJsObject [
	
	self propertyAt: 'avatar' put: aJsObject
]

{ #category : #'properties-generated' }
DojoManager >> canDropFlag [
	
	self access: 'canDropFlag'
]

{ #category : #'properties-generated' }
DojoManager >> canDropFlag: aJsObject [
	
	self propertyAt: 'canDropFlag' put: aJsObject
]

{ #category : #'functions-generated' }
DojoManager >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : #'properties-generated' }
DojoManager >> copy [
	
	self access: 'copy'
]

{ #category : #'properties-generated' }
DojoManager >> copy: aJsObject [
	
	self propertyAt: 'copy' put: aJsObject
]

{ #category : #'properties-generated' }
DojoManager >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoManager >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'functions-generated' }
DojoManager >> makeAvatar [
	"  Makes the avatar, it is separate to be overwritten dynamically, if needed. "

	self call: 'makeAvatar'
]

{ #category : #'properties-generated' }
DojoManager >> nodes [
	
	self access: 'nodes'
]

{ #category : #'properties-generated' }
DojoManager >> nodes: anArray [
	
	self propertyAt: 'nodes' put: anArray
]

{ #category : #'properties-generated' }
DojoManager >> oFFSETX [
	
	self access: 'OFFSET_X'
]

{ #category : #'properties-generated' }
DojoManager >> oFFSETX: aNumber [
	
	self propertyAt: 'OFFSET_X' put: aNumber
]

{ #category : #'properties-generated' }
DojoManager >> oFFSETY [
	
	self access: 'OFFSET_Y'
]

{ #category : #'properties-generated' }
DojoManager >> oFFSETY: aNumber [
	
	self propertyAt: 'OFFSET_Y' put: aNumber
]

{ #category : #'events-generated' }
DojoManager >> onKeyDown: e [
	"  event processor for onkeydown: watching for CTRL for copy/move status, watching for ESCAPE to cancel the drag "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoManager >> onKeyUp: e [
	"  event processor for onkeyup, watching for CTRL for copy/move status "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoManager >> onMouseMove: e [
	"  event processor for onmousemove "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoManager >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DojoManager >> outSource: source [ 
	"  called when a source detected a mouse-out condition "

	self call: 'outSource' withArguments: (Array with: source)
]

{ #category : #'functions-generated' }
DojoManager >> overSource: source [ 
	"  called when a source detected a mouse-over condition "

	self call: 'overSource' withArguments: (Array with: source)
]

{ #category : #'properties-generated' }
DojoManager >> source [
	
	self access: 'source'
]

{ #category : #'properties-generated' }
DojoManager >> source: aJsObject [
	
	self propertyAt: 'source' put: aJsObject
]

{ #category : #'functions-generated' }
DojoManager >> startDrag: source nodes: nodes copy: copy [ 
	"  called to initiate the DnD operation "

	self call: 'startDrag' withArguments: (Array with: source with: nodes with: copy)
]

{ #category : #'functions-generated' }
DojoManager >> stopDrag [
	"  stop the DnD in progress "

	self call: 'stopDrag'
]

{ #category : #'properties-generated' }
DojoManager >> target [
	
	self access: 'target'
]

{ #category : #'properties-generated' }
DojoManager >> target: aJsObject [
	
	self propertyAt: 'target' put: aJsObject
]

{ #category : #'functions-generated' }
DojoManager >> updateAvatar [
	"  updates the avatar; it is separate to be overwritten dynamically, if needed "

	self call: 'updateAvatar'
]
