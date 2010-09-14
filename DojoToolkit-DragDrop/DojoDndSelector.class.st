"
a Selector object, which knows how to select its children
"
Class {
	#name : #DojoDndSelector,
	#superclass : #DojoDndContainer,
	#category : 'DojoToolkit-DragDrop'
}

{ #category : #'accessing-generated' }
DojoDndSelector class >> functionName [

	^ 'dojo.dnd.Selector'
]

{ #category : #'properties-generated' }
DojoDndSelector >> anchor [
	
	self access: 'anchor'
]

{ #category : #'properties-generated' }
DojoDndSelector >> anchor: aJsObject [
	
	self propertyAt: 'anchor' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSelector >> autoSync [
	
	self access: 'autoSync'
]

{ #category : #'properties-generated' }
DojoDndSelector >> autoSync: aJsObject [
	
	self propertyAt: 'autoSync' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndSelector >> deleteSelectedNodes [
	"  deletes all selected items "

	self call: 'deleteSelectedNodes'
]

{ #category : #'functions-generated' }
DojoDndSelector >> forInSelectedItems: f o: o [ 
	"  iterates over selected items; see dojo.dnd.Container.forInItems() for details "

	self call: 'forInSelectedItems' withArguments: (Array with: f with: o)
]

{ #category : #'functions-generated' }
DojoDndSelector >> getSelectedNodes [
	"  returns a list (an array) of selected nodes "

	self call: 'getSelectedNodes'
]

{ #category : #'functions-generated' }
DojoDndSelector >> insertNodes: addSelected data: data before: before anchor: anchor [ 
	"  inserts an array of new nodes before/after an anchor node "

	self call: 'insertNodes' withArguments: (OrderedCollection new add: addSelected; add: data; add: before; add: anchor; yourself)
]

{ #category : #'events-generated' }
DojoDndSelector >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSelector >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSelector >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DojoDndSelector >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DojoDndSelector >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DojoDndSelector >> onmousemoveEvent [
	
	self access: 'onmousemoveEvent'
]

{ #category : #'properties-generated' }
DojoDndSelector >> onmousemoveEvent: aJsObject [
	
	self propertyAt: 'onmousemoveEvent' put: aJsObject
]

{ #category : #'functions-generated' }
DojoDndSelector >> selectAll [
	"  selects all items "

	self call: 'selectAll'
]

{ #category : #'functions-generated' }
DojoDndSelector >> selectNone [
	"  unselects all items "

	self call: 'selectNone'
]

{ #category : #'properties-generated' }
DojoDndSelector >> selection [
	"  The set of id's that are currently selected, such that this.selection[id] == 1 if the node w/that id is selected.
	Can iterate over selected node's id's like: for(var id in this.selection) "

	self access: 'selection'
]

{ #category : #'properties-generated' }
DojoDndSelector >> selection: aJsObject [
	"  The set of id's that are currently selected, such that this.selection[id] == 1 if the node w/that id is selected.
	Can iterate over selected node's id's like: for(var id in this.selection) "

	self propertyAt: 'selection' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSelector >> simpleSelection [
	
	self access: 'simpleSelection'
]

{ #category : #'properties-generated' }
DojoDndSelector >> simpleSelection: aJsObject [
	
	self propertyAt: 'simpleSelection' put: aJsObject
]

{ #category : #'properties-generated' }
DojoDndSelector >> singular [
	
	self access: 'singular'
]

{ #category : #'properties-generated' }
DojoDndSelector >> singular: aJsObject [
	
	self propertyAt: 'singular' put: aJsObject
]
