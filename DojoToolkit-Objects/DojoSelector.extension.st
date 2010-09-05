Extension { #name : #DojoSelector }

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> anchor [
	
	self access: 'anchor'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> anchor: aJsObject [
	
	self propertyAt: 'anchor' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> autoSync [
	
	self access: 'autoSync'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> autoSync: aJsObject [
	
	self propertyAt: 'autoSync' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> deleteSelectedNodes [
	"  deletes all selected items "

	self call: 'deleteSelectedNodes'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> forInSelectedItems: f o: o [ 
	"  iterates over selected items; see dojo.dnd.Container.forInItems() for details "

	self call: 'forInSelectedItems' withArguments: (Array with: f with: o)
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector classSide >> functionName [

	^ 'dojo.dnd.Selector'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> getSelectedNodes [
	"  returns a list (an array) of selected nodes "

	self call: 'getSelectedNodes'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> insertNodes: addSelected data: data before: before anchor: anchor [ 
	"  inserts an array of new nodes before/after an anchor node "

	self call: 'insertNodes' withArguments: (OrderedCollection new add: addSelected; add: data; add: before; add: anchor; yourself)
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onmousemoveEvent [
	
	self access: 'onmousemoveEvent'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> onmousemoveEvent: aJsObject [
	
	self propertyAt: 'onmousemoveEvent' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> selectAll [
	"  selects all items "

	self call: 'selectAll'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> selectNone [
	"  unselects all items "

	self call: 'selectNone'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> selection [
	"  The set of id's that are currently selected, such that this.selection[id] == 1 if the node w/that id is selected.
	Can iterate over selected node's id's like: for(var id in this.selection) "

	self access: 'selection'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> selection: aJsObject [
	"  The set of id's that are currently selected, such that this.selection[id] == 1 if the node w/that id is selected.
	Can iterate over selected node's id's like: for(var id in this.selection) "

	self propertyAt: 'selection' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> simpleSelection [
	
	self access: 'simpleSelection'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> simpleSelection: aJsObject [
	
	self propertyAt: 'simpleSelection' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> singular [
	
	self access: 'singular'
]

{ #category : '*DojoToolkit-Objects' }
DojoSelector >> singular: aJsObject [
	
	self propertyAt: 'singular' put: aJsObject
]
