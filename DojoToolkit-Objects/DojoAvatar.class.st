"
Object that represents transferred DnD items visually manager: Object a DnD manager object
"
Class {
	#name : #DojoAvatar,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoAvatar class >> functionName [

	^ 'dojo.dnd.Avatar'
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> construct [
	"  constructor function; it is separate so it can be (dynamically) overwritten in case of need "

	self call: 'construct'
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> destroy [
	"  destructor for the avatar; called to remove all references so it can be garbage-collected "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> isA11y [
	
	self access: 'isA11y'
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> isA11y: aJsObject [
	
	self propertyAt: 'isA11y' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> node [
	
	self access: 'node'
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> node: aJsObject [
	
	self propertyAt: 'node' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoAvatar >> update [
	"  updates the avatar to reflect the current DnD state "

	self call: 'update'
]
