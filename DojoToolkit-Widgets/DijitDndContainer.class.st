"
This is a base class for dijit.tree._dndSelector, and isn't meant to be used directly. It's modeled after dojo.dnd.Container.
"
Class {
	#name : #DijitDndContainer,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer class >> functionName [

	^ 'dijit.tree.dndContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> containerState [
	
	self access: 'containerState'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> containerState: aString [
	
	self propertyAt: 'containerState' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> current [
	"  The currently hovered TreeNode.rowNode (which is the DOM node associated w/a given node in the tree, excluding it's descendants) "

	self access: 'current'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> current: aNode [
	"  The currently hovered TreeNode.rowNode (which is the DOM node associated w/a given node in the tree, excluding it's descendants) "

	self propertyAt: 'current' put: aNode
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> currentWidget [
	
	self access: 'currentWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> currentWidget: aJsObject [
	
	self propertyAt: 'currentWidget' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> destroy [
	"  Prepares this object to be garbage-collected "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> events [
	
	self access: 'events'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> events: anArray [
	
	self propertyAt: 'events' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> getItem: key [ 
	"  Returns the dojo.dnd.Item (representing a dragged node) by it's key (id).
	Called by dojo.dnd.Source.checkAcceptance(). "

	self call: 'getItem' withArguments: (Array with: key)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> map [
	
	self access: 'map'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> map: aJsObject [
	
	self propertyAt: 'map' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> node [
	
	self access: 'node'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> node: aJsObject [
	
	self propertyAt: 'node' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> onMouseOut: anObject [
	"  Called when mouse is moved away from a TreeNode "

	self eventAt: 'onMouseOut' put: (anObject asFunction: #(#widget #event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> onMouseOver: anObject [
	"  Called when mouse is moved over a TreeNode "

	self eventAt: 'onMouseOver' put: (anObject asFunction: #(#widget #event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> onOutEvent: anObject [
	"  This function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> onOverEvent: anObject [
	"  This function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> parent [
	
	self access: 'parent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> parent: aJsObject [
	
	self propertyAt: 'parent' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> tree [
	"  Node or node's id to build the container on params: dijit.tree.__SourceArgs A dict of parameters, which gets mixed into the object "

	self access: 'tree'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndContainer >> tree: aNode [
	"  Node or node's id to build the container on params: dijit.tree.__SourceArgs A dict of parameters, which gets mixed into the object "

	self propertyAt: 'tree' put: aNode
]
