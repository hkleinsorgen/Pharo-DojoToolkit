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

{ #category : #'functions-generated' }
DojoAvatar >> construct [
	"  constructor function; it is separate so it can be (dynamically) overwritten in case of need "

	self call: 'construct'
]

{ #category : #'functions-generated' }
DojoAvatar >> destroy [
	"  destructor for the avatar; called to remove all references so it can be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoAvatar >> isA11y [
	
	self access: 'isA11y'
]

{ #category : #'properties-generated' }
DojoAvatar >> isA11y: aJsObject [
	
	self propertyAt: 'isA11y' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAvatar >> node [
	
	self access: 'node'
]

{ #category : #'properties-generated' }
DojoAvatar >> node: aJsObject [
	
	self propertyAt: 'node' put: aJsObject
]

{ #category : #'functions-generated' }
DojoAvatar >> update [
	"  updates the avatar to reflect the current DnD state "

	self call: 'update'
]
