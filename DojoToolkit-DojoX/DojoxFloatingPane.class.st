"
Makes a dojox.layout.ContentPane float and draggable by it's title [similar to TitlePane] and over-rides onClick to onDblClick for wipeIn/Out of containerNode provides minimize(dock) / show() and hide() methods, and resize [almost]
"
Class {
	#name : #DojoxFloatingPane,
	#superclass : #DojoxContentPane,
	#category : 'DojoToolkit-DojoX'
}

{ #category : #'accessing-generated' }
DojoxFloatingPane class >> functionName [

	^ 'dojox.layout.FloatingPane'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> bgIframe [
	
	self access: 'bgIframe'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> bgIframe: aJsObject [
	
	self propertyAt: 'bgIframe' put: aJsObject
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> bringToTop [
	"  bring this FloatingPane above all other panes "

	self call: 'bringToTop'
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> close [
	"  Close and destroy this widget "

	self call: 'close'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> contentClass [
	"  The className to give to the inner node which has the content "

	self access: 'contentClass'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> contentClass: aString [
	"  The className to give to the inner node which has the content "

	self propertyAt: 'contentClass' put: aString
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> dockTo [
	"  if empty, will create private layout.Dock that scrolls with viewport on bottom span of viewport. "

	self access: 'dockTo'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> dockTo: aNode [
	"  if empty, will create private layout.Dock that scrolls with viewport on bottom span of viewport. "

	self propertyAt: 'dockTo' put: aNode
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> dockable [
	"  Allow minimizing of pane if true "

	self access: 'dockable'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> dockable: aBoolean [
	"  Allow minimizing of pane if true "

	self propertyAt: 'dockable' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> duration [
	"  Time is MS to spend toggling in/out node "

	self access: 'duration'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> duration: aNumber [
	"  Time is MS to spend toggling in/out node "

	self propertyAt: 'duration' put: aNumber
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> hide: callback [ 
	"  Close, but do not destroy this FloatingPane "

	self call: 'hide' withArguments: (Array with: callback)
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> iconSrc [
	"  [not implemented yet] will be either icon in titlepane to left of Title, and/or icon show when docked in a fisheye-like dock or maybe dockIcon would be better? "

	self access: 'iconSrc'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> iconSrc: aString [
	"  [not implemented yet] will be either icon in titlepane to left of Title, and/or icon show when docked in a fisheye-like dock or maybe dockIcon would be better? "

	self propertyAt: 'iconSrc' put: aString
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> maxable [
	"  Horrible param name for 'Can you maximize this floating pane?' "

	self access: 'maxable'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> maxable: aBoolean [
	"  Horrible param name for 'Can you maximize this floating pane?' "

	self propertyAt: 'maxable' put: aBoolean
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> maximize [
	"  Make this FloatingPane full-screen (viewport) "

	self call: 'maximize'
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> minimize [
	"  Hide and dock the FloatingPane "

	self call: 'minimize'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> resizable [
	"  Allow resizing of pane true if true "

	self access: 'resizable'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> resizable: aBoolean [
	"  Allow resizing of pane true if true "

	self propertyAt: 'resizable' put: aBoolean
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> resize: dim [ 
	"  See dijit.layout._LayoutWidget.resize for description.
	Although ContentPane doesn't extend _LayoutWidget, it does implement the same API. "

	self call: 'resize' withArguments: (Array with: dim)
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> resizeAxis [
	"  One of: x | xy | y to limit pane's sizing direction "

	self access: 'resizeAxis'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> resizeAxis: aString [
	"  One of: x | xy | y to limit pane's sizing direction "

	self propertyAt: 'resizeAxis' put: aString
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> setTitle: title [ 
	"  Update the Title bar with a new string "

	self call: 'setTitle' withArguments: (Array with: title)
]

{ #category : #'functions-generated' }
DojoxFloatingPane >> show: callback [ 
	"  Show the FloatingPane "

	self call: 'show' withArguments: (Array with: callback)
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DojoxFloatingPane >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
