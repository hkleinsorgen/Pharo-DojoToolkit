"
Base class for Menu and MenuBar
"
Class {
	#name : #DijitMenuBase,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitMenuBase class >> functionName [

	^ 'dijit.MenuBase'
]

{ #category : #'functions-generated' }
DijitMenuBase >> addChild: widget insertIndex: insertIndex [ 
	"  Add a child to our _Container "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : #'functions-generated' }
DijitMenuBase >> connectKeyNavHandlers: prevKeyCodes nextKeyCodes: nextKeyCodes [ 
	"  Call in postCreate() to attach the keyboard handlers to the container.
	preKeyCodes: dojo.keys[] Key codes for navigating to the previous child. "

	self call: 'connectKeyNavHandlers' withArguments: (Array with: prevKeyCodes with: nextKeyCodes)
]

{ #category : #'properties-generated' }
DijitMenuBase >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitMenuBase >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'functions-generated' }
DijitMenuBase >> focus [
	"  Default focus() implementation: focus the first child. "

	self call: 'focus'
]

{ #category : #'functions-generated' }
DijitMenuBase >> focusChild: widget last: last [ 
	"  Focus widget. "

	self call: 'focusChild' withArguments: (Array with: widget with: last)
]

{ #category : #'functions-generated' }
DijitMenuBase >> focusFirstChild [
	"  Focus the first focusable child in the container. "

	self call: 'focusFirstChild'
]

{ #category : #'functions-generated' }
DijitMenuBase >> focusNext [
	"  Focus the next widget "

	self call: 'focusNext'
]

{ #category : #'functions-generated' }
DijitMenuBase >> focusPrev [
	"  Focus the last focusable node in the previous widget (ex: go to the ComboButton icon section rather than button section) "

	self call: 'focusPrev'
]

{ #category : #'properties-generated' }
DijitMenuBase >> focusedChild [
	"  The currently focused child widget, or null if there isn't one "

	self access: 'focusedChild'
]

{ #category : #'properties-generated' }
DijitMenuBase >> focusedChild: aJsObject [
	"  The currently focused child widget, or null if there isn't one "

	self propertyAt: 'focusedChild' put: aJsObject
]

{ #category : #'properties-generated' }
DijitMenuBase >> hoverTimer [
	
	self access: 'hover_timer'
]

{ #category : #'properties-generated' }
DijitMenuBase >> hoverTimer: aJsObject [
	
	self propertyAt: 'hover_timer' put: aJsObject
]

{ #category : #'properties-generated' }
DijitMenuBase >> isActive [
	
	self access: 'isActive'
]

{ #category : #'properties-generated' }
DijitMenuBase >> isActive: aJsObject [
	
	self propertyAt: 'isActive' put: aJsObject
]

{ #category : #'properties-generated' }
DijitMenuBase >> isShowingNow [
	
	self access: 'isShowingNow'
]

{ #category : #'properties-generated' }
DijitMenuBase >> isShowingNow: aJsObject [
	
	self propertyAt: 'isShowingNow' put: aJsObject
]

{ #category : #'events-generated' }
DijitMenuBase >> onCancel: closeAll [
	"  Attach point for notification about when the user cancels the current menu This is an internal mechanism used for Menus to signal to their parent to close them.
	In general developers should not attach to or override this method. "

	self eventAt: 'onCancel' put: (closeAll asFunction: #(#closeAll))
]

{ #category : #'events-generated' }
DijitMenuBase >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitMenuBase >> onExecute: anObject [
	"  Attach point for notification about when a menu item has been executed.
	This is an internal mechanism used for Menus to signal to their parent to close them, because they are about to execute the onClick handler.
	In general developers should not attach to or override this method. "

	self eventAt: 'onExecute' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitMenuBase >> onItemClick: anObject [
	"  Handle clicks on an item. "

	self eventAt: 'onItemClick' put: (anObject asFunction: #(#item #event))
]

{ #category : #'events-generated' }
DijitMenuBase >> onItemHover: item [
	"  Called when cursor is over a MenuItem. "

	self eventAt: 'onItemHover' put: (item asFunction: #(#item))
]

{ #category : #'events-generated' }
DijitMenuBase >> onItemUnhover: item [
	"  Callback fires when mouse exits a MenuItem "

	self eventAt: 'onItemUnhover' put: (item asFunction: #(#item))
]

{ #category : #'events-generated' }
DijitMenuBase >> onOpen: e [
	"  Callback when this menu is opened.
	This is called by the popup manager as notification that the menu was opened. "

	self eventAt: 'onOpen' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DijitMenuBase >> parentMenu [
	"  pointer to menu that displayed me "

	self access: 'parentMenu'
]

{ #category : #'properties-generated' }
DijitMenuBase >> parentMenu: aJsObject [
	"  pointer to menu that displayed me "

	self propertyAt: 'parentMenu' put: aJsObject
]

{ #category : #'properties-generated' }
DijitMenuBase >> popupDelay [
	"  number of milliseconds before hovering (without clicking) causes the popup to automatically open. "

	self access: 'popupDelay'
]

{ #category : #'properties-generated' }
DijitMenuBase >> popupDelay: aNumber [
	"  number of milliseconds before hovering (without clicking) causes the popup to automatically open. "

	self propertyAt: 'popupDelay' put: aNumber
]

{ #category : #'functions-generated' }
DijitMenuBase >> startupKeyNavChildren [
	"  Call in startup() to set child tabindexes to -1 "

	self call: 'startupKeyNavChildren'
]

{ #category : #'properties-generated' }
DijitMenuBase >> tabIndex [
	"  Tab index of the container; same as HTML tabIndex attribute.
	Note then when user tabs into the container, focus is immediately moved to the first item in the container. "

	self access: 'tabIndex'
]

{ #category : #'properties-generated' }
DijitMenuBase >> tabIndex: aNumber [
	"  Tab index of the container; same as HTML tabIndex attribute.
	Note then when user tabs into the container, focus is immediately moved to the first item in the container. "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : #'properties-generated' }
DijitMenuBase >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitMenuBase >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitMenuBase >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitMenuBase >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitMenuBase >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitMenuBase >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
