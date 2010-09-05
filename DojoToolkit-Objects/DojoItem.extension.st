Extension { #name : #DojoItem }

{ #category : '*DojoToolkit-Objects' }
DojoItem >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Objects' }
DojoItem >> data [
	"  Logical representation of the object being dragged.
	If the drag object's type is 'text' then data is a String, if it's another type then data could be a different Object, perhaps a name/value hash. "

	self access: 'data'
]

{ #category : '*DojoToolkit-Objects' }
DojoItem >> data: aJsObject [
	"  Logical representation of the object being dragged.
	If the drag object's type is 'text' then data is a String, if it's another type then data could be a different Object, perhaps a name/value hash. "

	self propertyAt: 'data' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItem classSide >> functionName [

	^ 'dojo.dnd.Item'
]

{ #category : '*DojoToolkit-Objects' }
DojoItem >> type [
	"  Type(s) of this item, by default this is ['text'] "

	self access: 'type'
]

{ #category : '*DojoToolkit-Objects' }
DojoItem >> type: aJsObject [
	"  Type(s) of this item, by default this is ['text'] "

	self propertyAt: 'type' put: aJsObject
]
