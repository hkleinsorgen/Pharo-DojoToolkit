"
a Container object, which knows when mouse hovers over it, and over which element it hovers
"
Class {
	#name : #DojoContainer,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoContainer class >> functionName [

	^ 'dojo.dnd.Container'
]

{ #category : #'functions-generated' }
DojoContainer >> clearItems [
	"  removes all data items from the map "

	self call: 'clearItems'
]

{ #category : #'properties-generated' }
DojoContainer >> containerState [
	
	self access: 'containerState'
]

{ #category : #'properties-generated' }
DojoContainer >> containerState: aString [
	
	self propertyAt: 'containerState' put: aString
]

{ #category : #'properties-generated' }
DojoContainer >> creator [
	"  creator function, dummy at the moment "

	self access: 'creator'
]

{ #category : #'properties-generated' }
DojoContainer >> creator: aJsObject [
	"  creator function, dummy at the moment "

	self propertyAt: 'creator' put: aJsObject
]

{ #category : #'properties-generated' }
DojoContainer >> current [
	"  The DOM node the mouse is currently hovered over "

	self access: 'current'
]

{ #category : #'properties-generated' }
DojoContainer >> current: aNode [
	"  The DOM node the mouse is currently hovered over "

	self propertyAt: 'current' put: aNode
]

{ #category : #'properties-generated' }
DojoContainer >> defaultCreator [
	
	self access: 'defaultCreator'
]

{ #category : #'properties-generated' }
DojoContainer >> defaultCreator: aJsObject [
	
	self propertyAt: 'defaultCreator' put: aJsObject
]

{ #category : #'functions-generated' }
DojoContainer >> delItem: key [ 
	"  removes a data item from the map by its key (id) "

	self call: 'delItem' withArguments: (Array with: key)
]

{ #category : #'functions-generated' }
DojoContainer >> destroy [
	"  prepares this object to be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoContainer >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoContainer >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'functions-generated' }
DojoContainer >> forInItems: f o: o [ 
	"  iterates over a data map skipping members that are present in the empty object (IE and/or 3rd-party libraries). "

	self call: 'forInItems' withArguments: (Array with: f with: o)
]

{ #category : #'functions-generated' }
DojoContainer >> getAllNodes [
	"  returns a list (an array) of all valid child nodes "

	self call: 'getAllNodes'
]

{ #category : #'functions-generated' }
DojoContainer >> getItem: key [ 
	"  returns a data item by its key (id) "

	self call: 'getItem' withArguments: (Array with: key)
]

{ #category : #'functions-generated' }
DojoContainer >> insertNodes: data before: before anchor: anchor [ 
	"  inserts an array of new nodes before/after an anchor node "

	self call: 'insertNodes' withArguments: (Array with: data with: before with: anchor)
]

{ #category : #'properties-generated' }
DojoContainer >> map [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self access: 'map'
]

{ #category : #'properties-generated' }
DojoContainer >> map: aJsObject [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self propertyAt: 'map' put: aJsObject
]

{ #category : #'functions-generated' }
DojoContainer >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : #'properties-generated' }
DojoContainer >> node [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self access: 'node'
]

{ #category : #'properties-generated' }
DojoContainer >> node: aNode [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : #'events-generated' }
DojoContainer >> onMouseOut: e [
	"  event processor for onmouseout "

	self eventAt: 'onMouseOut' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoContainer >> onMouseOver: e [
	"  event processor for onmouseover "

	self eventAt: 'onMouseOver' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoContainer >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoContainer >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoContainer >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DojoContainer >> parent [
	
	self access: 'parent'
]

{ #category : #'properties-generated' }
DojoContainer >> parent: aJsObject [
	
	self propertyAt: 'parent' put: aJsObject
]

{ #category : #'functions-generated' }
DojoContainer >> setItem: key data: data [ 
	"  associates a data item with its key (id) "

	self call: 'setItem' withArguments: (Array with: key with: data)
]

{ #category : #'properties-generated' }
DojoContainer >> skipForm [
	
	self access: 'skipForm'
]

{ #category : #'properties-generated' }
DojoContainer >> skipForm: aJsObject [
	
	self propertyAt: 'skipForm' put: aJsObject
]

{ #category : #'functions-generated' }
DojoContainer >> startup [
	"  collects valid child items and populate the map "

	self call: 'startup'
]

{ #category : #'functions-generated' }
DojoContainer >> sync [
	"  sync up the node list with the data map "

	self call: 'sync'
]
