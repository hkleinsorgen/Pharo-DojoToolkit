Extension { #name : #DojoContainer }

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> clearItems [
	"  removes all data items from the map "

	self call: 'clearItems'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> containerState [
	
	self access: 'containerState'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> containerState: aString [
	
	self propertyAt: 'containerState' put: aString
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> creator [
	"  creator function, dummy at the moment "

	self access: 'creator'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> creator: aJsObject [
	"  creator function, dummy at the moment "

	self propertyAt: 'creator' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> current [
	"  The DOM node the mouse is currently hovered over "

	self access: 'current'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> current: aNode [
	"  The DOM node the mouse is currently hovered over "

	self propertyAt: 'current' put: aNode
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> defaultCreator [
	
	self access: 'defaultCreator'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> defaultCreator: aJsObject [
	
	self propertyAt: 'defaultCreator' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> delItem: key [ 
	"  removes a data item from the map by its key (id) "

	self call: 'delItem' withArguments: (Array with: key)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> destroy [
	"  prepares this object to be garbage-collected "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> events [
	
	self access: 'events'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> forInItems: f o: o [ 
	"  iterates over a data map skipping members that are present in the empty object (IE and/or 3rd-party libraries). "

	self call: 'forInItems' withArguments: (Array with: f with: o)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer classSide >> functionName [

	^ 'dojo.dnd.Container'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> getAllNodes [
	"  returns a list (an array) of all valid child nodes "

	self call: 'getAllNodes'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> getItem: key [ 
	"  returns a data item by its key (id) "

	self call: 'getItem' withArguments: (Array with: key)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> insertNodes: data before: before anchor: anchor [ 
	"  inserts an array of new nodes before/after an anchor node "

	self call: 'insertNodes' withArguments: (Array with: data with: before with: anchor)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> map [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self access: 'map'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> map: aJsObject [
	"  dojo.dnd.Item> Map from an item's id (which is also the DOMNode's id) to the dojo.dnd.Item itself. "

	self propertyAt: 'map' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> markupFactory: params node: node [ 
	
	self call: 'markupFactory' withArguments: (Array with: params with: node)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> node [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self access: 'node'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> node: aNode [
	"  node or node's id to build the container on params: dojo.dnd.__ContainerArgs a dictionary of parameters "

	self propertyAt: 'node' put: aNode
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> onMouseOut: e [
	"  event processor for onmouseout "

	self eventAt: 'onMouseOut' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> onMouseOver: e [
	"  event processor for onmouseover "

	self eventAt: 'onMouseOver' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> onSelectStart: e [
	"  event processor for onselectevent and ondragevent "

	self eventAt: 'onSelectStart' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> parent [
	
	self access: 'parent'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> parent: aJsObject [
	
	self propertyAt: 'parent' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> setItem: key data: data [ 
	"  associates a data item with its key (id) "

	self call: 'setItem' withArguments: (Array with: key with: data)
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> skipForm [
	
	self access: 'skipForm'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> skipForm: aJsObject [
	
	self propertyAt: 'skipForm' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> startup [
	"  collects valid child items and populate the map "

	self call: 'startup'
]

{ #category : '*DojoToolkit-Objects' }
DojoContainer >> sync [
	"  sync up the node list with the data map "

	self call: 'sync'
]
