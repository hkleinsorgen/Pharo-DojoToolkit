"
A normalized DOM event
"
Class {
	#name : #DojoEvent,
	#superclass : #DojoObject,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoEvent class >> functionName [

	^ ''
]

{ #category : #properties }
DojoEvent >> charCode [
	" For keypress events, the character code of the key pressed"

	^ self access: 'charCode'
]

{ #category : #properties }
DojoEvent >> charOrCode [  
	" a normalized version of charCode and keyCode, which can be used for direct comparison for alpha keys and special keys together. (added in 1.1) "

	^ self access: 'charOrCode'
]

{ #category : #properties }
DojoEvent >> currentTarget [
	" the current target "

	^ ( self access: 'currentTarget' ) create: DojoDomNode
]

{ #category : #initialization }
DojoEvent >> initialize [

	super initialize.
	self alias: 'event'
]

{ #category : #properties }
DojoEvent >> keyCode [ 
	" for keypress events, handles special keys like ENTER and spacebar. "

	^ self access: 'keyCode'
]

{ #category : #properties }
DojoEvent >> layerX [ 
	"the x coordinate, relative to the event.currentTarget "

	^ self access: 'layerX'
]

{ #category : #properties }
DojoEvent >> layerY [ 
	"the y coordinate, relative to the event.currentTarget "

	^ self access: 'layerY'
]

{ #category : #properties }
DojoEvent >> pageX [ 
	"the X coordinate, relative to the view port"

	^ self access: 'pageX'
]

{ #category : #properties }
DojoEvent >> pageY [ 
	"the Y coordinate, relative to the view port"

	^ self access: 'pageY'
]

{ #category : #functions }
DojoEvent >> preventDefault [
	" revent an event's default behavior (e.g., a link from loading a new page) "

	self call: 'preventDefault'
]

{ #category : #properties }
DojoEvent >> relatedTarget [
	" For onmouseover and onmouseout, the object that the mouse pointer is moving to or out of "

	^ self access: 'relatedTarget'
]

{ #category : #functions }
DojoEvent >> stopEvent [ 
	" The same as calling event.preventDefault() and event.stopPropagation() on some passed event "

	^ self dojo stopEvent: self
]

{ #category : #functions }
DojoEvent >> stopPropagation [ 
	" prevent an event from triggering a parent node's event "

	self call: 'stopPropagation'
]

{ #category : #properties }
DojoEvent >> target [ 
	" the element that generated the event "

	^ self access: 'target'
]
