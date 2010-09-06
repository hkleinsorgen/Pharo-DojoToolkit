"
a Container object, which knows when mouse hovers over it, and over which element it hovers
"
Class {
	#name : #DojoDndContainer,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : '*DojoToolkit-DragDrop' }
DojoDndContainer class >> functionName [

	^ 'dojo.dnd.Container'
]

{ #category : #'functions-generated' }
DojoDndContainer >> clearItems [
	"  removes all data items from the map "

	self call: 'clearItems'
]

{ #category : #'properties-generated' }
DojoDndContainer >> containerState [
	
	self access: 'containerState'
]

{ #category : #'properties-generated' }
DojoDndContainer >> containerState: aString [
	
	self propertyAt: 'containerState' put: aString
]

{ #category : #'properties-generated' }
DojoDndContainer >> creator [
	"  creator function, dummy at the moment "

	self access: 'creator'
]

{ #category : #'properties-generated' }
DojoDndContainer >> creator: aJsObject [
	"  creator function, dummy at the moment "

	self propertyAt: 'creator' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndContainer >> current [
	"  The DOM node the mouse is currently hovered over "

	self access: 'current'
]

{ #category : #'properties-generated' }
DojoDndContainer >> current: aNode [
	"  The DOM node the mouse is currently hovered over "

	self propertyAt: 'current' put: aNode
]

{ #category : #'properties-generated' }
DojoDndContainer >> defaultCreator [
	
	self access: 'defaultCreator'
]

{ #category : #'properties-generated' }
DojoDndContainer >> defaultCreator: aJsObject [
	
	self propertyAt: 'defaultCreator' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndContainer >> delItem: key [ 
	"  removes a data item from the map by its key (id) "

	self call: 'delItem' withArguments: (Array with: key)
]

{ #category : #'functions-generated' }
DojoDndContainer >> destroy [
	"  prepares this object to be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DojoDndContainer >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DojoDndContainer >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'functions-generated' }
DojoDndContainer >> forInItems: f o: o [ 
	"  iterates over a data map skipping members that are present in the empty object (IE and/or 3rd-party libraries). "

	self call: 'forInItems' withArguments: (Array with: f with: o)
]

{ #category : #'functions-generated' }
DojoDndContainer >> getAllNodes [
	"  returns a list (an array) of all valid child nodes "

	self call: 'getAllNodes'
]

{ #category : #'functions-generated' }
DojoDndContainer >> getItem: key [ 
	"  returns a data item by its key (id) "

	self call: 'getItem' withArguments: (Array with: key)
]

{ #category : #'functions-generated' }
DojoDndContainer >> insertNodes: data before: before anchor: anchor [ 
	"  inserts an array of new nodes before/after an anchor node "

	self call: 'insertNodes' withArguments: (Array with: data with: before with: anchor)
]

{ #category : #'properties-generated' }
DojoDndContainer >> map [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self access: 'map'
]

{ #category : #'properties-generated' }
DojoDndContainer >> map: aJsObject [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self propertyAt: 'map' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndContainer >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : #'properties-generated' }
DojoDndContainer >> node [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self access: 'node'
]

{ #category : #'properties-generated' }
DojoDndContainer >> node: aNode [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : #'events-generated' }
DojoDndContainer >> onMouseOut: e [
	"  event processor for onmouseout "

	self eventAt: 'onMouseOut' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndContainer >> onMouseOver: e [
	"  event processor for onmouseover "

	self eventAt: 'onMouseOver' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndContainer >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndContainer >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndContainer >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DojoDndContainer >> parent [
	
	self access: 'parent'
]

{ #category : #'properties-generated' }
DojoDndContainer >> parent: aJsObject [
	
	self propertyAt: 'parent' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndContainer >> setItem: key data: data [ 
	"  associates a data item with its key (id) "

	self call: 'setItem' withArguments: (Array with: key with: data)
]

{ #category : #'properties-generated' }
DojoDndContainer >> skipForm [
	
	self access: 'skipForm'
]

{ #category : #'properties-generated' }
DojoDndContainer >> skipForm: aJsObject [
	
	self propertyAt: 'skipForm' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndContainer >> startup [
	"  collects valid child items and populate the map "

	self call: 'startup'
]

{ #category : #'functions-generated' }
DojoDndContainer >> sync [
	"  sync up the node list with the data map "

	self call: 'sync'
]
