"
A specialized version of Moveable to support an FPS throttling. This class puts an upper restriction on FPS, which may reduce the CPU load. The additional parameter 'timeout' regulates the delay before actually moving the moveable object.
"
Class {
	#name : #DojoTimedMoveable,
	#superclass : #DojoMoveable,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoTimedMoveable class >> functionName [

	^ 'dojo.dnd.TimedMoveable'
]

{ #category : '*DojoToolkit-Objects' }
DojoTimedMoveable >> onMove: anObject [
	"  called during every move notification; should actually move the node; can be overwritten. "

	self eventAt: 'onMove' put: (anObject asFunction: #(#mover #leftTop))
]

{ #category : '*DojoToolkit-Objects' }
DojoTimedMoveable >> onMoveStop: mover [
	"  called after every move operation "

	self eventAt: 'onMoveStop' put: (mover asFunction: #(#mover))
]

{ #category : '*DojoToolkit-Objects' }
DojoTimedMoveable >> timeout [
	
	self access: 'timeout'
]

{ #category : '*DojoToolkit-Objects' }
DojoTimedMoveable >> timeout: aNumber [
	
	self propertyAt: 'timeout' put: aNumber
]
