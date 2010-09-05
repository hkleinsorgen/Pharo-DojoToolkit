"
Represents (one of) the source node(s) being dragged. Contains (at least) the 'type' and 'data' attributes.
"
Class {
	#name : #DojoItem,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoItem class >> functionName [

	^ 'dojo.dnd.Item'
]

{ #category : #'functions-generated' }
DojoItem >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : #'properties-generated' }
DojoItem >> data [
	"  Logical representation of the object being dragged.
	If the drag object's type is 'text' then data is a String, if it's another type then data could be a different Object, perhaps a name/value hash. "

	self access: 'data'
]

{ #category : #'properties-generated' }
DojoItem >> data: aJsObject [
	"  Logical representation of the object being dragged.
	If the drag object's type is 'text' then data is a String, if it's another type then data could be a different Object, perhaps a name/value hash. "

	self propertyAt: 'data' put: aJsObject
]

{ #category : #'properties-generated' }
DojoItem >> type [
	"  Type(s) of this item, by default this is ['text'] "

	self access: 'type'
]

{ #category : #'properties-generated' }
DojoItem >> type: aJsObject [
	"  Type(s) of this item, by default this is ['text'] "

	self propertyAt: 'type' put: aJsObject
]
