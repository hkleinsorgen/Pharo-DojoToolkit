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

{ #category : '*DojoToolkit-Objects' }
DojoManager >> avatar [
	
	self access: 'avatar'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> avatar: aJsObject [
	
	self propertyAt: 'avatar' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> canDropFlag [
	
	self access: 'canDropFlag'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> canDropFlag: aJsObject [
	
	self propertyAt: 'canDropFlag' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> copy [
	
	self access: 'copy'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> copy: aJsObject [
	
	self propertyAt: 'copy' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> events [
	
	self access: 'events'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> makeAvatar [
	"  Makes the avatar, it is separate to be overwritten dynamically, if needed. "

	self call: 'makeAvatar'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> nodes [
	
	self access: 'nodes'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> nodes: anArray [
	
	self propertyAt: 'nodes' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> oFFSETX [
	
	self access: 'OFFSET_X'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> oFFSETX: aNumber [
	
	self propertyAt: 'OFFSET_X' put: aNumber
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> oFFSETY [
	
	self access: 'OFFSET_Y'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> oFFSETY: aNumber [
	
	self propertyAt: 'OFFSET_Y' put: aNumber
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> onKeyDown: e [
	"  event processor for onkeydown: watching for CTRL for copy/move status, watching for ESCAPE to cancel the drag "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> onKeyUp: e [
	"  event processor for onkeyup, watching for CTRL for copy/move status "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> onMouseMove: e [
	"  event processor for onmousemove "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> outSource: source [ 
	"  called when a source detected a mouse-out condition "

	self call: 'outSource' withArguments: (Array with: source)
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> overSource: source [ 
	"  called when a source detected a mouse-over condition "

	self call: 'overSource' withArguments: (Array with: source)
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> source [
	
	self access: 'source'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> source: aJsObject [
	
	self propertyAt: 'source' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> startDrag: source nodes: nodes copy: copy [ 
	"  called to initiate the DnD operation "

	self call: 'startDrag' withArguments: (Array with: source with: nodes with: copy)
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> stopDrag [
	"  stop the DnD in progress "

	self call: 'stopDrag'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> target [
	
	self access: 'target'
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> target: aJsObject [
	
	self propertyAt: 'target' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoManager >> updateAvatar [
	"  updates the avatar; it is separate to be overwritten dynamically, if needed "

	self call: 'updateAvatar'
]
