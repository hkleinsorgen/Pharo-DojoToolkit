Extension { #name : #DijitDndSelector }

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> anchor [
	
	self access: 'anchor'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> anchor: aJsObject [
	
	self propertyAt: 'anchor' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> forInSelectedItems: f o: o [ 
	"  Iterates over selected items; see dojo.dnd.Container.forInItems() for details "

	self call: 'forInSelectedItems' withArguments: (Array with: f with: o)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector classSide >> functionName [

	^ 'dijit.tree.dndSelector'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> getSelectedNodes [
	"  Returns the set of selected nodes.
	Used by dndSource on the start of a drag. "

	self call: 'getSelectedNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> onMouseDown: e [
	"  Event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> onMouseUp: e [
	"  Event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> selectNone [
	"  Unselects all items "

	self call: 'selectNone'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> selection [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self access: 'selection'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> selection: aJsObject [
	"  DomNode> (id, DomNode) map for every TreeNode that's currently selected.
	The DOMNode is the TreeNode.rowNode. "

	self propertyAt: 'selection' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> simpleSelection [
	
	self access: 'simpleSelection'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> simpleSelection: aJsObject [
	
	self propertyAt: 'simpleSelection' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> singular [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self access: 'singular'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDndSelector >> singular: aBoolean [
	"  Allows selection of only one element, if true.
	Tree hasn't been tested in singular=true mode, unclear if it works. "

	self propertyAt: 'singular' put: aBoolean
]
