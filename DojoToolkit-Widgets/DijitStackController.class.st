"
Monitors the specified StackContainer, and whenever a page is added, deleted, or selected, updates itself accordingly.
"
Class {
	#name : #DijitStackController,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitStackController class >> functionName [

	^ 'dijit.layout.StackController'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> addChild: widget insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> adjacent: forward [ 
	"  Helper for onkeypress to find next/previous button "

	self call: 'adjacent' withArguments: (Array with: forward)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> buttonWidget [
	"  The name of the button widget to create to correspond to each page "

	self access: 'buttonWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> buttonWidget: aString [
	"  The name of the button widget to create to correspond to each page "

	self propertyAt: 'buttonWidget' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> containerId [
	"  The id of the page container that I point to "

	self access: 'containerId'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> containerId: aString [
	"  The id of the page container that I point to "

	self propertyAt: 'containerId' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onAddChild: anObject [
	"  Called whenever a page is added to the container.
	Create button corresponding to the page. "

	self eventAt: 'onAddChild' put: (anObject asFunction: #(#page #insertIndex))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onButtonClick: page [
	"  Called whenever one of my child buttons is pressed in an attempt to select a page "

	self eventAt: 'onButtonClick' put: (page asFunction: #(#page))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onCloseButtonClick: page [
	"  Called whenever one of my child buttons [X] is pressed in an attempt to close a page "

	self eventAt: 'onCloseButtonClick' put: (page asFunction: #(#page))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onContainerKeyPress: info [
	"  Called when there was a keypress on the container "

	self eventAt: 'onContainerKeyPress' put: (info asFunction: #(#info))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onRemoveChild: page [
	"  Called whenever a page is removed from the container.
	Remove the button corresponding to the page. "

	self eventAt: 'onRemoveChild' put: (page asFunction: #(#page))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onSelectChild: page [
	"  Called when a page has been selected in the StackContainer, either by me or by another StackController "

	self eventAt: 'onSelectChild' put: (page asFunction: #(#page))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onStartup: info [
	"  Called after StackContainer has finished initializing "

	self eventAt: 'onStartup' put: (info asFunction: #(#info))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> onkeypress: e [
	"  Handle keystrokes on the page list, for advancing to next/previous button and closing the current page if the page is closable. "

	self eventAt: 'onkeypress' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> pane2button [
	
	self access: 'pane2button'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> pane2button: aJsObject [
	
	self propertyAt: 'pane2button' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> pane2handles [
	
	self access: 'pane2handles'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> pane2handles: aJsObject [
	
	self propertyAt: 'pane2handles' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> removeChild: widget [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: widget)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackController >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
