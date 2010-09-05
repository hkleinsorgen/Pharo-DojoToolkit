"
This is a base class for dijit.tree.dndSource , and isn't meant to be used directly. It's based on dojo.dnd.Selector.
"
Class {
	#name : #DijitDndSelector,
	#superclass : #DijitDndContainer,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector class >> functionName [

	^ 'dijit.tree.dndSelector'
]

{ #category : #'properties-generated' }
DijitDndSelector >> anchor [
	
	self access: 'anchor'
]

{ #category : #'properties-generated' }
DijitDndSelector >> anchor: aJsObject [
	
	self propertyAt: 'anchor' put: aJsObject
]

{ #category : #'functions-generated' }
DijitDndSelector >> forInSelectedItems: f o: o [ 
	"  Iterates over selected items; see dojo.dnd.Container.forInItems() for details "

	self call: 'forInSelectedItems' withArguments: (Array with: f with: o)
]

{ #category : #'functions-generated' }
DijitDndSelector >> getSelectedNodes [
	"  Returns the set of selected nodes.
	Used by dndSource on the start of a drag. "

	self call: 'getSelectedNodes'
]

{ #category : #'events-generated' }
DijitDndSelector >> onMouseDown: e [
	"  Event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitDndSelector >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitDndSelector >> onMouseUp: e [
	"  Event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : #'functions-generated' }
DijitDndSelector >> selectNone [
	"  Unselects all items "

	self call: 'selectNone'
]

{ #category : #'properties-generated' }
DijitDndSelector >> selection [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self access: 'selection'
]

{ #category : #'properties-generated' }
DijitDndSelector >> selection: aJsObject [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self propertyAt: 'selection' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSelector >> simpleSelection [
	
	self access: 'simpleSelection'
]

{ #category : #'properties-generated' }
DijitDndSelector >> simpleSelection: aJsObject [
	
	self propertyAt: 'simpleSelection' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDndSelector >> singular [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self access: 'singular'
]

{ #category : #'properties-generated' }
DijitDndSelector >> singular: aBoolean [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self propertyAt: 'singular' put: aBoolean
]
