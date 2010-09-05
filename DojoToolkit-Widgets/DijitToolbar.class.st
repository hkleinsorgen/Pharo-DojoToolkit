"
A Toolbar widget, used to hold things like dijit.Editor buttons
"
Class {
	#name : #DijitToolbar,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitToolbar class >> functionName [

	^ 'dijit.Toolbar'
]

{ #category : #'functions-generated' }
DijitToolbar >> addChild: widget insertIndex: insertIndex [ 
	"  Add a child to our _Container "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : #'functions-generated' }
DijitToolbar >> connectKeyNavHandlers: prevKeyCodes nextKeyCodes: nextKeyCodes [ 
	"  Call in postCreate() to attach the keyboard handlers to the container.
	preKeyCodes: dojo.keys[] Key codes for navigating to the previous child. "

	self call: 'connectKeyNavHandlers' withArguments: (Array with: prevKeyCodes with: nextKeyCodes)
]

{ #category : #'properties-generated' }
DijitToolbar >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitToolbar >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'functions-generated' }
DijitToolbar >> focus [
	"  Default focus() implementation: focus the first child. "

	self call: 'focus'
]

{ #category : #'functions-generated' }
DijitToolbar >> focusChild: widget last: last [ 
	"  Focus widget. "

	self call: 'focusChild' withArguments: (Array with: widget with: last)
]

{ #category : #'functions-generated' }
DijitToolbar >> focusFirstChild [
	"  Focus the first focusable child in the container. "

	self call: 'focusFirstChild'
]

{ #category : #'functions-generated' }
DijitToolbar >> focusNext [
	"  Focus the next widget "

	self call: 'focusNext'
]

{ #category : #'functions-generated' }
DijitToolbar >> focusPrev [
	"  Focus the last focusable node in the previous widget (ex: go to the ComboButton icon section rather than button section) "

	self call: 'focusPrev'
]

{ #category : #'properties-generated' }
DijitToolbar >> focusedChild [
	"  The currently focused child widget, or null if there isn't one "

	self access: 'focusedChild'
]

{ #category : #'properties-generated' }
DijitToolbar >> focusedChild: aJsObject [
	"  The currently focused child widget, or null if there isn't one "

	self propertyAt: 'focusedChild' put: aJsObject
]

{ #category : #'functions-generated' }
DijitToolbar >> startupKeyNavChildren [
	"  Call in startup() to set child tabindexes to -1 "

	self call: 'startupKeyNavChildren'
]

{ #category : #'properties-generated' }
DijitToolbar >> tabIndex [
	"  Tab index of the container; same as HTML tabIndex attribute.
	Note then when user tabs into the container, focus is immediately moved to the first item in the container. "

	self access: 'tabIndex'
]

{ #category : #'properties-generated' }
DijitToolbar >> tabIndex: aNumber [
	"  Tab index of the container; same as HTML tabIndex attribute.
	Note then when user tabs into the container, focus is immediately moved to the first item in the container. "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : #'properties-generated' }
DijitToolbar >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitToolbar >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitToolbar >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitToolbar >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitToolbar >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitToolbar >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
