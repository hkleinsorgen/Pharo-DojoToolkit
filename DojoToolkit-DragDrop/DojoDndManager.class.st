"
the manager of DnD operations (usually a singleton)
"
Class {
	#name : #DojoDndManager,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : #'accessing-generated' }
DojoDndManager class >> functionName [

	^ 'dojo.dnd.Manager'
]

{ #category : #'properties-generated' }
DojoDndManager >> avatar [
	
	self access: 'avatar'
]

{ #category : #'properties-generated' }
DojoDndManager >> avatar: aJsObject [
	
	self propertyAt: 'avatar' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndManager >> canDropFlag [
	
	self access: 'canDropFlag'
]

{ #category : #'properties-generated' }
DojoDndManager >> canDropFlag: aJsObject [
	
	self propertyAt: 'canDropFlag' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndManager >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : #'properties-generated' }
DojoDndManager >> copy [
	
	self access: 'copy'
]

{ #category : #'properties-generated' }
DojoDndManager >> copy: aJsObject [
	
	self propertyAt: 'copy' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndManager >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoDndManager >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'functions-generated' }
DojoDndManager >> makeAvatar [
	"  Makes the avatar, it is separate to be overwritten dynamically, if needed. "

	self call: 'makeAvatar'
]

{ #category : #'properties-generated' }
DojoDndManager >> nodes [
	
	self access: 'nodes'
]

{ #category : #'properties-generated' }
DojoDndManager >> nodes: anArray [
	
	self propertyAt: 'nodes' put: anArray
]

{ #category : #'properties-generated' }
DojoDndManager >> oFFSETX [
	
	self access: 'OFFSET_X'
]

{ #category : #'properties-generated' }
DojoDndManager >> oFFSETX: aNumber [
	
	self propertyAt: 'OFFSET_X' put: aNumber
]

{ #category : #'properties-generated' }
DojoDndManager >> oFFSETY [
	
	self access: 'OFFSET_Y'
]

{ #category : #'properties-generated' }
DojoDndManager >> oFFSETY: aNumber [
	
	self propertyAt: 'OFFSET_Y' put: aNumber
]

{ #category : #'events-generated' }
DojoDndManager >> onKeyDown: e [
	"  event processor for onkeydown: watching for CTRL for copy/move status, watching for ESCAPE to cancel the drag "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndManager >> onKeyUp: e [
	"  event processor for onkeyup, watching for CTRL for copy/move status "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndManager >> onMouseMove: e [
	"  event processor for onmousemove "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndManager >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DojoDndManager >> outSource: source [ 
	"  called when a source detected a mouse-out condition "

	self call: 'outSource' withArguments: (Array with: source)
]

{ #category : #'functions-generated' }
DojoDndManager >> overSource: source [ 
	"  called when a source detected a mouse-over condition "

	self call: 'overSource' withArguments: (Array with: source)
]

{ #category : #'properties-generated' }
DojoDndManager >> source [
	
	self access: 'source'
]

{ #category : #'properties-generated' }
DojoDndManager >> source: aJsObject [
	
	self propertyAt: 'source' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndManager >> startDrag: source nodes: nodes copy: copy [ 
	"  called to initiate the DnD operation "

	self call: 'startDrag' withArguments: (Array with: source with: nodes with: copy)
]

{ #category : #'functions-generated' }
DojoDndManager >> stopDrag [
	"  stop the DnD in progress "

	self call: 'stopDrag'
]

{ #category : #'properties-generated' }
DojoDndManager >> target [
	
	self access: 'target'
]

{ #category : #'properties-generated' }
DojoDndManager >> target: aJsObject [
	
	self propertyAt: 'target' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndManager >> updateAvatar [
	"  updates the avatar; it is separate to be overwritten dynamically, if needed "

	self call: 'updateAvatar'
]
