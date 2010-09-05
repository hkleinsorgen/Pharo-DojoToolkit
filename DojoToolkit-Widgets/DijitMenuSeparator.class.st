"
A line between two menu items
"
Class {
	#name : #DijitMenuSeparator,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitMenuSeparator class >> functionName [

	^ 'dijit.MenuSeparator'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'functions-generated' }
DijitMenuSeparator >> getIndexInParent [
	"  Returns the index of this widget within its container parent.
	It returns -1 if the parent does not exist, or if the parent is not a dijit._Container "

	self call: 'getIndexInParent'
]

{ #category : #'functions-generated' }
DijitMenuSeparator >> getNextSibling [
	"  Returns null if this is the last child of the parent, otherwise returns the next element sibling to the 'right'. "

	self call: 'getNextSibling'
]

{ #category : #'functions-generated' }
DijitMenuSeparator >> getParent [
	"  Returns the parent widget of this widget, assuming the parent specifies isContainer "

	self call: 'getParent'
]

{ #category : #'functions-generated' }
DijitMenuSeparator >> getPreviousSibling [
	"  Returns null if this is the first child of the parent, otherwise returns the next element sibling to the 'left'. "

	self call: 'getPreviousSibling'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitMenuSeparator >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
