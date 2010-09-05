"
Base class for a _Container widget which is responsible for laying out its children. Widgets which mixin this code must define layout() to manage placement and sizing of the children.
"
Class {
	#name : #DijitLayoutWidget,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget class >> functionName [

	^ 'dijit.layout.LayoutWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> addChild: child insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: child with: insertIndex)
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getIndexInParent [
	"  Returns the index of this widget within its container parent.
	It returns -1 if the parent does not exist, or if the parent is not a dijit._Container "

	self call: 'getIndexInParent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getNextSibling [
	"  Returns null if this is the last child of the parent, otherwise returns the next element sibling to the 'right'. "

	self call: 'getNextSibling'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getParent [
	"  Returns the parent widget of this widget, assuming the parent specifies isContainer "

	self call: 'getParent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getParent: aJsObject [
	
	self propertyAt: 'getParent' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> getPreviousSibling [
	"  Returns null if this is the first child of the parent, otherwise returns the next element sibling to the 'left'. "

	self call: 'getPreviousSibling'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> isLayoutContainer [
	"  Indicates that this widget is going to call resize() on its children widgets, setting their size, when they become visible. "

	self access: 'isLayoutContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> isLayoutContainer: aBoolean [
	"  Indicates that this widget is going to call resize() on its children widgets, setting their size, when they become visible. "

	self propertyAt: 'isLayoutContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> layout [
	"  Widgets override this method to size and position their contents/children.
	When this is called this._contentBox is guaranteed to be set (see resize()).
	This is called after startup(), and also when the widget's size has been changed. "

	self call: 'layout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> removeChild: child [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: child)
]

{ #category : '*DojoToolkit-Widgets' }
DijitLayoutWidget >> resize: changeSize resultSize: resultSize [ 
	"  Change size mode: When changeSize is specified, changes the marginBox of this widget and forces it to relayout its contents accordingly.
	changeSize may specify height, width, or both.
	If resultSize is specified it indicates the size the widget will become after changeSize has been applied.
	Notification mode: When changeSize is null, indicates that the caller has already changed the size of the widget, or perhaps it changed because the browser window was resized.
	Tells widget to relayout its contents accordingly.
	If resultSize is also specified it indicates the size the widget has become.
	In either mode, this method also: 1.
	Sets this.borderBox and this.contentBox to the new size of the widget.
	Queries the current domNode size if necessary.
	2.
	Calls layout() to resize contents (and maybe adjust child widgets) "

	self call: 'resize' withArguments: (Array with: changeSize with: resultSize)
]
