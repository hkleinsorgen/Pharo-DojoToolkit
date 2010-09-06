"
This is a base class for dijit.tree._dndSelector, and isn't meant to be used directly. It's modeled after dojo.dnd.Container.
"
Class {
	#name : #DijitTreeDndContainer,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTreeDndContainer class >> functionName [

	^ 'dijit.tree.dndContainer'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> containerState [
	
	self access: 'containerState'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> containerState: aString [
	
	self propertyAt: 'containerState' put: aString
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> current [
	"  The currently hovered TreeNode.rowNode (which is the DOM node associated w/a given node in the tree, excluding it's descendants) "

	self access: 'current'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> current: aNode [
	"  The currently hovered TreeNode.rowNode (which is the DOM node associated w/a given node in the tree, excluding it's descendants) "

	self propertyAt: 'current' put: aNode
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> currentWidget [
	
	self access: 'currentWidget'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> currentWidget: aJsObject [
	
	self propertyAt: 'currentWidget' put: aJsObject
]

{ #category : #'functions-generated' }
DijitTreeDndContainer >> destroy [
	"  Prepares this object to be garbage-collected "

	self call: 'destroy'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> events [
	
	self access: 'events'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : #'functions-generated' }
DijitTreeDndContainer >> getItem: key [ 
	"  Returns the dojo.dnd.Item (representing a dragged node) by it's key (id).
	Called by dojo.dnd.Source.checkAcceptance(). "

	self call: 'getItem' withArguments: (Array with: key)
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> map [
	
	self access: 'map'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> map: aJsObject [
	
	self propertyAt: 'map' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> node [
	
	self access: 'node'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> node: aJsObject [
	
	self propertyAt: 'node' put: aJsObject
]

{ #category : #'events-generated' }
DijitTreeDndContainer >> onMouseOut: anObject [
	"  Called when mouse is moved away from a TreeNode "

	self eventAt: 'onMouseOut' put: (anObject asFunction: #(#widget #event))
]

{ #category : #'events-generated' }
DijitTreeDndContainer >> onMouseOver: anObject [
	"  Called when mouse is moved over a TreeNode "

	self eventAt: 'onMouseOver' put: (anObject asFunction: #(#widget #event))
]

{ #category : #'events-generated' }
DijitTreeDndContainer >> onOutEvent: anObject [
	"  This function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitTreeDndContainer >> onOverEvent: anObject [
	"  This function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> parent [
	
	self access: 'parent'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> parent: aJsObject [
	
	self propertyAt: 'parent' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> tree [
	"  Node or node's id to build the container on params: dijit.tree.__SourceArgs A dict of parameters, which gets mixed into the object "

	self access: 'tree'
]

{ #category : #'properties-generated' }
DijitTreeDndContainer >> tree: aNode [
	"  Node or node's id to build the container on params: dijit.tree.__SourceArgs A dict of parameters, which gets mixed into the object "

	self propertyAt: 'tree' put: aNode
]
