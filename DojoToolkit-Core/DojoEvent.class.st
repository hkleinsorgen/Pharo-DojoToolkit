"
A normalized DOM event
"
Class {
	#name : #DojoEvent,
	#superclass : #DojoObject,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoEvent class >> functionName [

	^ ''
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> charCode [
	" For keypress events, the character code of the key pressed"

	^ self access: 'charCode'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> charOrCode [  
	" a normalized version of charCode and keyCode, which can be used for direct comparison for alpha keys and special keys together. (added in 1.1) "

	^ self access: 'charOrCode'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> currentTarget [
	" the current target "

	^ self access: 'currentTarget'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> initialize [

	super initialize.
	self alias: 'event'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> keyCode [ 
	" for keypress events, handles special keys like ENTER and spacebar. "

	^ self access: 'keyCode'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> layerX [ 
	"the x coordinate, relative to the event.currentTarget "

	^ self access: 'layerX'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> layerY [ 
	"the y coordinate, relative to the event.currentTarget "

	^ self access: 'layerY'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> pageX [ 
	"the X coordinate, relative to the view port"

	^ self access: 'pageX'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> pageY [ 
	"the Y coordinate, relative to the view port"

	^ self access: 'pageY'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> relatedTarget [
	" For onmouseover and onmouseout, the object that the mouse pointer is moving to or out of "

	^ self access: 'relatedTarget'
]

{ #category : '*DojoToolkit-Core' }
DojoEvent >> target [ 
	" the element that generated the event "

	^ self access: 'target'
]
