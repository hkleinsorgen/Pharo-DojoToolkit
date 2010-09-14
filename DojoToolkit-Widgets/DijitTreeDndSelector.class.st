"
This is a base class for dijit.tree.dndSource , and isn't meant to be used directly. It's based on dojo.dnd.Selector.
"
Class {
	#name : #DijitTreeDndSelector,
	#superclass : #DijitTreeDndContainer,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitTreeDndSelector class >> functionName [

	^ 'dijit.tree.dndSelector'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> anchor [
	
	self access: 'anchor'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> anchor: aJsObject [
	
	self propertyAt: 'anchor' put: aJsObject
]

{ #category : #'functions-generated' }
DijitTreeDndSelector >> forInSelectedItems: f o: o [ 
	"  Iterates over selected items; see dojo.dnd.Container.forInItems() for details "

	self call: 'forInSelectedItems' withArguments: (Array with: f with: o)
]

{ #category : #'functions-generated' }
DijitTreeDndSelector >> getSelectedNodes [
	"  Returns the set of selected nodes.
	Used by dndSource on the start of a drag. "

	self call: 'getSelectedNodes'
]

{ #category : #'events-generated' }
DijitTreeDndSelector >> onMouseDown: e [
	"  Event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitTreeDndSelector >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitTreeDndSelector >> onMouseUp: e [
	"  Event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DijitTreeDndSelector >> selectNone [
	"  Unselects all items "

	self call: 'selectNone'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> selection [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self access: 'selection'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> selection: aJsObject [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self propertyAt: 'selection' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> simpleSelection [
	
	self access: 'simpleSelection'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> simpleSelection: aJsObject [
	
	self propertyAt: 'simpleSelection' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> singular [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self access: 'singular'
]

{ #category : #'properties-generated' }
DijitTreeDndSelector >> singular: aBoolean [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self propertyAt: 'singular' put: aBoolean
]
