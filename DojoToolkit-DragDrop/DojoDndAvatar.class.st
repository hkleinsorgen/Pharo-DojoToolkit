"
Object that represents transferred DnD items visually manager: Object a DnD manager object
"
Class {
	#name : #DojoDndAvatar,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : '*DojoToolkit-DragDrop' }
DojoDndAvatar class >> functionName [

	^ 'dojo.dnd.Avatar'
]

{ #category : #'functions-generated' }
DojoDndAvatar >> construct [
	"  constructor function; it is separate so it can be (dynamically) overwritten in case of need "

	self call: 'construct'
]

{ #category : #'functions-generated' }
DojoDndAvatar >> destroy [
	"  destructor for the avatar; called to remove all references so it can be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoDndAvatar >> isA11y [
	
	self access: 'isA11y'
]

{ #category : #'properties-generated' }
DojoDndAvatar >> isA11y: aJsObject [
	
	self propertyAt: 'isA11y' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndAvatar >> node [
	
	self access: 'node'
]

{ #category : #'properties-generated' }
DojoDndAvatar >> node: aJsObject [
	
	self propertyAt: 'node' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndAvatar >> update [
	"  updates the avatar to reflect the current DnD state "

	self call: 'update'
]
