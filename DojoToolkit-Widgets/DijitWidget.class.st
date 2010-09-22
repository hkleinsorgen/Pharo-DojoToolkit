"
Base class for all Dijit widgets.
"
Class {
	#name : #DijitWidget,
	#superclass : #DojoConstructableObject,
	#instVars : [
		'sourceNode',
		'deferredScriptBlocks'
	],
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitWidget class >> functionName [

	^ 'dijit.Widget'
]

{ #category : #private }
DijitWidget >> addLoadScriptBlock: aBlock [
	" the deferred block will be executed when the object is attached to a brush.
	the script will be added as load script to the document "

	deferredScriptBlocks isNil ifTrue: [ deferredScriptBlocks := OrderedCollection new ].
	deferredScriptBlocks add: aBlock
]

{ #category : #accessing }
DijitWidget >> arguments [

	^ self sourceNode notNil 
		ifTrue: [ Array with: self properties with: self sourceNode ]
		ifFalse: [ Array with: self properties ]
]

{ #category : #'functions-generated' }
DijitWidget >> attr: name value: value [ 
	"  This method is deprecated, use get() or set() directly "

	self call: 'attr' withArguments: (Array with: name with: value)
]

{ #category : #'properties-generated' }
DijitWidget >> baseClass [
	"  Root CSS class of the widget (ex: dijitTextBox), used to construct CSS classes to indicate widget state. "

	self access: 'baseClass'
]

{ #category : #'properties-generated' }
DijitWidget >> baseClass: aString [
	"  Root CSS class of the widget (ex: dijitTextBox), used to construct CSS classes to indicate widget state. "

	self propertyAt: 'baseClass' put: aString
]

{ #category : #'functions-generated' }
DijitWidget >> buildRendering [
	"  Most widgets will mixin dijit._Templated, which implements this method "

	self call: 'buildRendering'
]

{ #category : #'properties-generated' }
DijitWidget >> class: aString [
	"  HTML class attribute "

	self propertyAt: 'class' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> closable [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	True if user can close (destroy) this child, such as (for example) clicking the X on the tab. "

	self access: 'closable'
]

{ #category : #'properties-generated' }
DijitWidget >> closable: aBoolean [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	True if user can close (destroy) this child, such as (for example) clicking the X on the tab. "

	self propertyAt: 'closable' put: aBoolean
]

{ #category : #'properties-generated' }
DijitWidget >> colspan [
	"  The number of columns this widget should span. "

	self access: 'colspan'
]

{ #category : #'properties-generated' }
DijitWidget >> colspan: aNumber [
	"  The number of columns this widget should span. "

	self propertyAt: 'colspan' put: aNumber
]

{ #category : #'properties-generated' }
DijitWidget >> column [
	"  Column of the grid to place the widget.
	Defined only if dojo.require('dojox.layout.GridContainerLite') is done. "

	self access: 'column'
]

{ #category : #'properties-generated' }
DijitWidget >> column: aString [
	"  Column of the grid to place the widget.
	Defined only if dojo.require('dojox.layout.GridContainerLite') is done. "

	self propertyAt: 'column' put: aString
]

{ #category : #'functions-generated' }
DijitWidget >> connect: obj event: event method: method [ 
	"  Provide widget-specific analog to dojo.connect, except with the implicit use of this widget as the target object.
	This version of connect also provides a special 'ondijitclick' event which triggers on a click or space or enter keyup "

	self call: 'connect' withArguments: (Array with: obj with: event with: method)
]

{ #category : #functions }
DijitWidget >> connectEvent: event method: method [ 

	self connect: nil event: event method: method
]

{ #category : #'properties-generated' }
DijitWidget >> containerNode [
	"  Designates where children of the source DOM node will be placed.
	'Children' in this case refers to both DOM nodes and widgets.
	For example, for myWidget: <div dojoType=myWidget> <b> here's a plain DOM node <span dojoType=subWidget>and a widget</span> <i> and another plain DOM node </i> </div> containerNode would point to: <b> here's a plain DOM node <span dojoType=subWidget>and a widget</span> <i> and another plain DOM node </i> In templated widgets, 'containerNode' is set via a dojoAttachPoint assignment.
	containerNode must be defined for any widget that accepts innerHTML (like ContentPane or BorderContainer or even Button), and conversely is null for widgets that don't, like TextBox. "

	self access: 'containerNode'
]

{ #category : #'properties-generated' }
DijitWidget >> containerNode: aNode [
	"  Designates where children of the source DOM node will be placed.
	'Children' in this case refers to both DOM nodes and widgets.
	For example, for myWidget: <div dojoType=myWidget> <b> here's a plain DOM node <span dojoType=subWidget>and a widget</span> <i> and another plain DOM node </i> </div> containerNode would point to: <b> here's a plain DOM node <span dojoType=subWidget>and a widget</span> <i> and another plain DOM node </i> In templated widgets, 'containerNode' is set via a dojoAttachPoint assignment.
	containerNode must be defined for any widget that accepts innerHTML (like ContentPane or BorderContainer or even Button), and conversely is null for widgets that don't, like TextBox. "

	self propertyAt: 'containerNode' put: aNode
]

{ #category : #'functions-generated' }
DijitWidget >> create: params srcNodeRef: srcNodeRef [ 
	"  Create calls a number of widget methods (postMixInProperties, buildRendering, postCreate, etc.), some of which of you'll want to override.
	See http://docs.dojocampus.org/dijit/_Widget for a discussion of the widget creation lifecycle.
	Of course, adventurous developers could override create entirely, but this should only be done as a last resort "

	self call: 'create' withArguments: (Array with: params with: srcNodeRef)
]

{ #category : #'functions-generated' }
DijitWidget >> destroy: preserveDom [ 
	"  Destroy this widget, but not its descendants.
	This method will, however, destroy internal widgets such as those used within a template. "

	self call: 'destroy' withArguments: (Array with: preserveDom)
]

{ #category : #'functions-generated' }
DijitWidget >> destroyDescendants: preserveDom [ 
	"  Recursively destroy the children of this widget and their descendants. "

	self call: 'destroyDescendants' withArguments: (Array with: preserveDom)
]

{ #category : #'functions-generated' }
DijitWidget >> destroyRecursive: preserveDom [ 
	"  This is the generic 'destructor' function that all widget users should call to cleanly discard with a widget.
	Once a widget is destroyed, it is removed from the manager object "

	self call: 'destroyRecursive' withArguments: (Array with: preserveDom)
]

{ #category : #'functions-generated' }
DijitWidget >> destroyRendering: preserveDom [ 
	"  Destroys the DOM nodes associated with this widget "

	self call: 'destroyRendering' withArguments: (Array with: preserveDom)
]

{ #category : #'properties-generated' }
DijitWidget >> dir [
	"  Bi-directional support, as defined by the [HTML DIR](http://www.w3.org/TR/html401/struct/dirlang.html#adef-dir) attribute.
	Either left-to-right 'ltr' or right-to-left 'rtl'.
	If undefined, widgets renders in page's default direction. "

	self access: 'dir'
]

{ #category : #'properties-generated' }
DijitWidget >> dir: aString [
	"  Bi-directional support, as defined by the [HTML DIR](http://www.w3.org/TR/html401/struct/dirlang.html#adef-dir) attribute.
	Either left-to-right 'ltr' or right-to-left 'rtl'.
	If undefined, widgets renders in page's default direction. "

	self propertyAt: 'dir' put: aString
]

{ #category : #'functions-generated' }
DijitWidget >> disconnect: handles [ 
	"  Disconnects handle created by connect.
	Also removes handle from this widget's list of connects. "

	self call: 'disconnect' withArguments: (Array with: handles)
]

{ #category : #'properties-generated' }
DijitWidget >> dndType [
	"  Defines a type of widget. "

	self access: 'dndType'
]

{ #category : #'properties-generated' }
DijitWidget >> dndType: aString [
	"  Defines a type of widget. "

	self propertyAt: 'dndType' put: aString
]

{ #category : #accessing }
DijitWidget >> dojoAddDeferredLoadScriptsTo: scripts [ 

	| document |
	deferredScriptBlocks notNil 
		ifTrue: 
		[	document := self renderContext document.
			deferredScriptBlocks do: [: block | document addLoadScript: ( block value: self sourceNode )]
		].
]

{ #category : #'properties-generated' }
DijitWidget >> dojoAttachEvent [
	
	self access: 'dojoAttachEvent'
]

{ #category : #'properties-generated' }
DijitWidget >> dojoAttachEvent: aString [
	
	self propertyAt: 'dojoAttachEvent' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> dojoAttachPoint [
	
	self access: 'dojoAttachPoint'
]

{ #category : #'properties-generated' }
DijitWidget >> dojoAttachPoint: aString [
	
	self propertyAt: 'dojoAttachPoint' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> domNode [
	"  This is our visible representation of the widget! Other DOM Nodes may by assigned to other properties, usually through the template system's dojoAttachPoint syntax, but the domNode property is the canonical 'top level' node in widget UI. "

	self access: 'domNode'
]

{ #category : #'properties-generated' }
DijitWidget >> domNode: aNode [
	"  This is our visible representation of the widget! Other DOM Nodes may by assigned to other properties, usually through the template system's dojoAttachPoint syntax, but the domNode property is the canonical 'top level' node in widget UI. "

	self propertyAt: 'domNode' put: aNode
]

{ #category : #'properties-generated' }
DijitWidget >> dragRestriction [
	"  If true, the widget can not be draggable.
	Defined only if dojo.require('dojox.layout.GridContainerLite') is done. "

	self access: 'dragRestriction'
]

{ #category : #'properties-generated' }
DijitWidget >> dragRestriction: aBoolean [
	"  If true, the widget can not be draggable.
	Defined only if dojo.require('dojox.layout.GridContainerLite') is done. "

	self propertyAt: 'dragRestriction' put: aBoolean
]

{ #category : #'functions-generated' }
DijitWidget >> get: name [ 
	"  Get a named property from a widget.
	The property may potentially be retrieved via a getter method.
	If no getter is defined, this just retrieves the object's property.
	For example, if the widget has a properties 'foo' and 'bar' and a method named 'getFooAttr', calling: myWidget.get('foo'); would be equivalent to writing: widget.getFooAttr(); and: myWidget.get('bar'); would be equivalent to writing: widget.bar; "

	self call: 'get' withArguments: (Array with: name)
]

{ #category : #'functions-generated' }
DijitWidget >> getChildren [
	"  Returns all the widgets contained by this, i.e., all widgets underneath this.containerNode.
	Does not return nested widgets, nor widgets that are part of this widget's template. "

	self call: 'getChildren'
]

{ #category : #'functions-generated' }
DijitWidget >> getDescendants [
	"  Returns all the widgets contained by this, i.e., all widgets underneath this.containerNode.
	This method should generally be avoided as it returns widgets declared in templates, which are supposed to be internal/hidden, but it's left here for back-compat reasons. "

	self call: 'getDescendants'
]

{ #category : #'properties-generated' }
DijitWidget >> iconClass [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	CSS Class specifying icon to use in label associated with this pane. "

	self access: 'iconClass'
]

{ #category : #'properties-generated' }
DijitWidget >> iconClass: aString [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	CSS Class specifying icon to use in label associated with this pane. "

	self propertyAt: 'iconClass' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> id [
	"  A unique, opaque ID string that can be assigned by users or by the system.
	If the developer passes an ID which is known not to be unique, the specified ID is ignored and the system-generated ID is used instead. "

	self access: 'id'
]

{ #category : #accessing }
DijitWidget >> id: aString [
	" compatibility/convencience code: WATagBrush>>#script: sends #id: to the widget "

	self sourceNode: aString.
]

{ #category : #'functions-generated' }
DijitWidget >> isFocusable [
	"  Return true if this widget can currently be focused and false if not "

	self call: 'isFocusable'
]

{ #category : #'functions-generated' }
DijitWidget >> isLeftToRight [
	"  Return this widget's explicit or implicit orientation (true for LTR, false for RTL) "

	self call: 'isLeftToRight'
]

{ #category : #'properties-generated' }
DijitWidget >> label [
	"  The label to display for a given widget "

	self access: 'label'
]

{ #category : #'properties-generated' }
DijitWidget >> label: aString [
	"  The label to display for a given widget "

	self propertyAt: 'label' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> lang [
	"  Rarely used.
	Overrides the default Dojo locale used to render this widget, as defined by the [HTML LANG](http://www.w3.org/TR/html401/struct/dirlang.html#adef-lang) attribute.
	Value must be among the list of locales specified during by the Dojo bootstrap, formatted according to [RFC 3066](http://www.ietf.org/rfc/rfc3066.txt) (like en-us). "

	self access: 'lang'
]

{ #category : #'properties-generated' }
DijitWidget >> lang: aString [
	"  Rarely used.
	Overrides the default Dojo locale used to render this widget, as defined by the [HTML LANG](http://www.w3.org/TR/html401/struct/dirlang.html#adef-lang) attribute.
	Value must be among the list of locales specified during by the Dojo bootstrap, formatted according to [RFC 3066](http://www.ietf.org/rfc/rfc3066.txt) (like en-us). "

	self propertyAt: 'lang' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> layoutAlign [
	"  'none', 'left', 'right', 'bottom', 'top', and 'client'.
	See the LayoutContainer description for details on this parameter. "

	self access: 'layoutAlign'
]

{ #category : #'properties-generated' }
DijitWidget >> layoutAlign: aString [
	"  'none', 'left', 'right', 'bottom', 'top', and 'client'.
	See the LayoutContainer description for details on this parameter. "

	self propertyAt: 'layoutAlign' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> maxSize [
	"  Parameter for children of dijit.layout.BorderContainer.
	Specifies a maximum size (in pixels) for this widget when resized by a splitter. "

	self access: 'maxSize'
]

{ #category : #'properties-generated' }
DijitWidget >> maxSize: aNumber [
	"  Parameter for children of dijit.layout.BorderContainer.
	Specifies a maximum size (in pixels) for this widget when resized by a splitter. "

	self propertyAt: 'maxSize' put: aNumber
]

{ #category : #'properties-generated' }
DijitWidget >> minSize [
	"  Parameter for children of dijit.layout.BorderContainer.
	Specifies a minimum size (in pixels) for this widget when resized by a splitter. "

	self access: 'minSize'
]

{ #category : #'properties-generated' }
DijitWidget >> minSize: aNumber [
	"  Parameter for children of dijit.layout.BorderContainer.
	Specifies a minimum size (in pixels) for this widget when resized by a splitter. "

	self propertyAt: 'minSize' put: aNumber
]

{ #category : #'properties-generated' }
DijitWidget >> nodesWithKeyClick [
	"  List of nodes that correctly handle click events via native browser support, and don't need dijit's help "

	self access: 'nodesWithKeyClick'
]

{ #category : #'properties-generated' }
DijitWidget >> nodesWithKeyClick: aJsObject [
	"  List of nodes that correctly handle click events via native browser support, and don't need dijit's help "

	self propertyAt: 'nodesWithKeyClick' put: aJsObject
]

{ #category : #'properties-generated' }
DijitWidget >> observer [
	
	self access: 'observer'
]

{ #category : #'properties-generated' }
DijitWidget >> observer: aString [
	
	self propertyAt: 'observer' put: aString
]

{ #category : #'events-generated' }
DijitWidget >> onBlur: anObject [
	"  Called when the widget stops being 'active' because focus moved to something outside of it, or the user clicked somewhere outside of it, or the widget was hidden. "

	self eventAt: 'onBlur' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitWidget >> onClick: event [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitWidget >> onDblClick: event [
	"  Connect to this function to receive notifications of mouse double click events. "

	self eventAt: 'onDblClick' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onFocus: anObject [
	"  Called when the widget becomes 'active' because it or a widget inside of it either has focus, or has recently been clicked. "

	self eventAt: 'onFocus' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitWidget >> onHide: anObject [
	"  Called when another widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate hide of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onHide' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitWidget >> onKeyDown: event [
	"  Connect to this function to receive notifications of keys being pressed down. "

	self eventAt: 'onKeyDown' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onKeyPress: event [
	"  Connect to this function to receive notifications of printable keys being typed. "

	self eventAt: 'onKeyPress' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onKeyUp: event [
	"  Connect to this function to receive notifications of keys being released. "

	self eventAt: 'onKeyUp' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseDown: event [
	"  Connect to this function to receive notifications of when the mouse button is pressed down. "

	self eventAt: 'onMouseDown' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseEnter: event [
	"  Connect to this function to receive notifications of when the mouse moves onto this widget. "

	self eventAt: 'onMouseEnter' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseLeave: event [
	"  Connect to this function to receive notifications of when the mouse moves off of this widget. "

	self eventAt: 'onMouseLeave' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseMove: event [
	"  Connect to this function to receive notifications of when the mouse moves over nodes contained within this widget. "

	self eventAt: 'onMouseMove' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseOut: event [
	"  Connect to this function to receive notifications of when the mouse moves off of nodes contained within this widget. "

	self eventAt: 'onMouseOut' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseOver: event [
	"  Connect to this function to receive notifications of when the mouse moves onto nodes contained within this widget. "

	self eventAt: 'onMouseOver' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onMouseUp: event [
	"  Connect to this function to receive notifications of when the mouse button is released. "

	self eventAt: 'onMouseUp' put: (event asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitWidget >> onShow: anObject [
	"  Called when this widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate display of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onShow' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitWidget >> params [
	
	self access: 'params'
]

{ #category : #'properties-generated' }
DijitWidget >> params: aJsObject [
	
	self propertyAt: 'params' put: aJsObject
]

{ #category : #'functions-generated' }
DijitWidget >> placeAt: reference position: position [ 
	"  A convenience function provided in all _Widgets, providing a simple shorthand mechanism to put an existing (or newly created) Widget somewhere in the dom, and allow chaining "

	self call: 'placeAt' withArguments: (Array with: reference with: position)
]

{ #category : #'functions-generated' }
DijitWidget >> postCreate [
	"  Called after the DOM fragment has been created, but not necessarily added to the document.
	Do not include any operations which rely on node dimensions or placement "

	self call: 'postCreate'
]

{ #category : #'functions-generated' }
DijitWidget >> postMixInProperties [
	"  Called after the parameters to the widget have been read-in, but before the widget template is instantiated.
	Especially useful to set properties that are referenced in the widget template. "

	self call: 'postMixInProperties'
]

{ #category : #'functions-generated' }
DijitWidget >> postscript: params srcNodeRef: srcNodeRef [ 
	"  Kicks off widget instantiation.
	See create() for details. "

	self call: 'postscript' withArguments: (Array with: params with: srcNodeRef)
]

{ #category : #'properties-generated' }
DijitWidget >> region [
	"  Parameter for children of dijit.layout.BorderContainer.
	Values: 'top', 'bottom', 'leading', 'trailing', 'left', 'right', 'center'.
	See the dijit.layout.BorderContainer description for details. "

	self access: 'region'
]

{ #category : #'properties-generated' }
DijitWidget >> region: aString [
	"  Parameter for children of dijit.layout.BorderContainer.
	Values: 'top', 'bottom', 'leading', 'trailing', 'left', 'right', 'center'.
	See the dijit.layout.BorderContainer description for details. "

	self propertyAt: 'region' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> selected [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	Specifies that this widget should be the initially displayed pane.
	Note: to change the selected child use dijit.layout.StackContainer.selectChild "

	self access: 'selected'
]

{ #category : #'properties-generated' }
DijitWidget >> selected: aBoolean [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	Specifies that this widget should be the initially displayed pane.
	Note: to change the selected child use dijit.layout.StackContainer.selectChild "

	self propertyAt: 'selected' put: aBoolean
]

{ #category : #'functions-generated' }
DijitWidget >> set: name value: value [ 
	"  Sets named properties on a widget which may potentially be handled by a setter in the widget.
	For example, if the widget has a properties 'foo' and 'bar' and a method named 'setFooAttr', calling: myWidget.set('foo', 'Howdy!'); would be equivalent to writing: widget.setFooAttr('Howdy!'); and: myWidget.set('bar', 3); would be equivalent to writing: widget.bar = 3; set() may also be called with a hash of name/value pairs, ex: myWidget.set({ foo: 'Howdy', bar: 3 }) This is equivalent to calling set(foo, 'Howdy') and set(bar, 3) "

	self call: 'set' withArguments: (Array with: name with: value)
]

{ #category : #'functions-generated' }
DijitWidget >> setAttribute: attr value: value [ 
	"  Deprecated.
	Use set() instead. "

	self call: 'setAttribute' withArguments: (Array with: attr with: value)
]

{ #category : #'properties-generated' }
DijitWidget >> showTitle [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	When true, display title of this widget as tab label etc., rather than just using icon specified in iconClass "

	self access: 'showTitle'
]

{ #category : #'properties-generated' }
DijitWidget >> showTitle: aBoolean [
	"  Parameter for children of dijit.layout.StackContainer or subclasses.
	When true, display title of this widget as tab label etc., rather than just using icon specified in iconClass "

	self propertyAt: 'showTitle' put: aBoolean
]

{ #category : #'properties-generated' }
DijitWidget >> sizeMin [
	"  Deprecated.
	Parameter for children of dijit.layout.SplitContainer.
	Minimum size (width or height) of a child of a SplitContainer.
	The value is relative to other children's sizeShare properties. "

	self access: 'sizeMin'
]

{ #category : #'properties-generated' }
DijitWidget >> sizeMin: aNumber [
	"  Deprecated.
	Parameter for children of dijit.layout.SplitContainer.
	Minimum size (width or height) of a child of a SplitContainer.
	The value is relative to other children's sizeShare properties. "

	self propertyAt: 'sizeMin' put: aNumber
]

{ #category : #'properties-generated' }
DijitWidget >> sizeShare [
	"  Deprecated.
	Parameter for children of dijit.layout.SplitContainer.
	Size (width or height) of a child of a SplitContainer.
	The value is relative to other children's sizeShare properties.
	For example, if there are two children and each has sizeShare=10, then each takes up 50% of the available space. "

	self access: 'sizeShare'
]

{ #category : #'properties-generated' }
DijitWidget >> sizeShare: aNumber [
	"  Deprecated.
	Parameter for children of dijit.layout.SplitContainer.
	Size (width or height) of a child of a SplitContainer.
	The value is relative to other children's sizeShare properties.
	For example, if there are two children and each has sizeShare=10, then each takes up 50% of the available space. "

	self propertyAt: 'sizeShare' put: aNumber
]

{ #category : #'properties-generated' }
DijitWidget >> slideFrom [
	"  A parameter needed by RadioGroupSlide only.
	An optional paramter to force the ContentPane to slide in from a set direction.
	Defaults to 'random', or specify one of 'top', 'left', 'right', 'bottom' to slideFrom top, left, right, or bottom. "

	self access: 'slideFrom'
]

{ #category : #'properties-generated' }
DijitWidget >> slideFrom: aString [
	"  A parameter needed by RadioGroupSlide only.
	An optional paramter to force the ContentPane to slide in from a set direction.
	Defaults to 'random', or specify one of 'top', 'left', 'right', 'bottom' to slideFrom top, left, right, or bottom. "

	self propertyAt: 'slideFrom' put: aString
]

{ #category : #accessing }
DijitWidget >> sourceNode [
	" a reference to the source node of this widget "

	^ sourceNode
]

{ #category : #accessing }
DijitWidget >> sourceNode: aSourceNode [ 
	" a reference to the source node of this widget "

	sourceNode := aSourceNode.
]

{ #category : #'properties-generated' }
DijitWidget >> spanLabel [
	"  Setting spanLabel to true makes the widget take up both the label and value cells.
	Defaults to false. "

	self access: 'spanLabel'
]

{ #category : #'properties-generated' }
DijitWidget >> spanLabel: aBoolean [
	"  Setting spanLabel to true makes the widget take up both the label and value cells.
	Defaults to false. "

	self propertyAt: 'spanLabel' put: aBoolean
]

{ #category : #'properties-generated' }
DijitWidget >> splitter [
	"  Parameter for child of dijit.layout.BorderContainer where region != 'center'.
	If true, enables user to resize the widget by putting a draggable splitter between this widget and the region=center widget. "

	self access: 'splitter'
]

{ #category : #'properties-generated' }
DijitWidget >> splitter: aBoolean [
	"  Parameter for child of dijit.layout.BorderContainer where region != 'center'.
	If true, enables user to resize the widget by putting a draggable splitter between this widget and the region=center widget. "

	self propertyAt: 'splitter' put: aBoolean
]

{ #category : #'properties-generated' }
DijitWidget >> srcNodeRef [
	"  pointer to original DOM node "

	self access: 'srcNodeRef'
]

{ #category : #'properties-generated' }
DijitWidget >> srcNodeRef: aNode [
	"  pointer to original DOM node "

	self propertyAt: 'srcNodeRef' put: aNode
]

{ #category : #'functions-generated' }
DijitWidget >> startup [
	"  Called after a widget and its children have been created and added to the page, and all related widgets have finished their create() cycle, up through postCreate().
	This is useful for composite widgets that need to control or layout sub-widgets.
	Many layout widgets can use this as a wiring phase "

	self call: 'startup'
]

{ #category : #callbacks }
DijitWidget >> storeCallback: aCallback [
	^ self renderContext callbacks store: aCallback
]

{ #category : #'properties-generated' }
DijitWidget >> style [
	"  HTML style attributes as cssText string or name/value hash "

	self access: 'style'
]

{ #category : #'properties-generated' }
DijitWidget >> style: aJsObject [
	"  HTML style attributes as cssText string or name/value hash "

	self propertyAt: 'style' put: aJsObject
]

{ #category : #'functions-generated' }
DijitWidget >> subscribe: topic method: method [ 
	"  Provide widget-specific analog to dojo.subscribe, except with the implicit use of this widget as the target object "

	self call: 'subscribe' withArguments: (Array with: topic with: method)
]

{ #category : #'properties-generated' }
DijitWidget >> title [
	"  The label to display for a given widget.
	This is interchangeable with the 'label' parameter, as some widgets already have a use for the 'label', and this can be used instead to avoid conflicts. "

	self access: 'title'
]

{ #category : #'properties-generated' }
DijitWidget >> title: aString [
	"  The label to display for a given widget.
	This is interchangeable with the 'label' parameter, as some widgets already have a use for the 'label', and this can be used instead to avoid conflicts. "

	self propertyAt: 'title' put: aString
]

{ #category : #'functions-generated' }
DijitWidget >> toString [
	"  Returns a string representation of the object. "

	self call: 'toString'
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterClosedThreshold [
	"  a css size value (e.g.
	'100px') "

	self access: 'toggleSplitterClosedThreshold'
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterClosedThreshold: aString [
	"  a css size value (e.g.
	'100px') "

	self propertyAt: 'toggleSplitterClosedThreshold' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterOpen [
	
	self access: 'toggleSplitterOpen'
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterOpen: aBoolean [
	
	self propertyAt: 'toggleSplitterOpen' put: aBoolean
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterOpenSize [
	
	self access: 'toggleSplitterOpenSize'
]

{ #category : #'properties-generated' }
DijitWidget >> toggleSplitterOpenSize: aString [
	
	self propertyAt: 'toggleSplitterOpenSize' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> tooltip [
	"  When this widget's title attribute is used to for a tab label, accordion pane title, etc., this specifies the tooltip to appear when the mouse is hovered over that text. "

	self access: 'tooltip'
]

{ #category : #'properties-generated' }
DijitWidget >> tooltip: aString [
	"  When this widget's title attribute is used to for a tab label, accordion pane title, etc., this specifies the tooltip to appear when the mouse is hovered over that text. "

	self propertyAt: 'tooltip' put: aString
]

{ #category : #'functions-generated' }
DijitWidget >> uninitialize [
	"  Stub function.
	Override to implement custom widget tear-down behavior. "

	self call: 'uninitialize'
]

{ #category : #'functions-generated' }
DijitWidget >> unsubscribe: handle [ 
	"  Unsubscribes handle created by this.subscribe.
	Also removes handle from this widget's list of subscriptions "

	self call: 'unsubscribe' withArguments: (Array with: handle)
]

{ #category : #'properties-generated' }
DijitWidget >> waiRole [
	
	self access: 'waiRole'
]

{ #category : #'properties-generated' }
DijitWidget >> waiRole: aString [
	
	self propertyAt: 'waiRole' put: aString
]

{ #category : #'properties-generated' }
DijitWidget >> waiState [
	
	self access: 'waiState'
]

{ #category : #'properties-generated' }
DijitWidget >> waiState: aString [
	
	self propertyAt: 'waiState' put: aString
]

{ #category : #accessing }
DijitWidget >> widgetId: aString [
	" compatibility/convencience code: WATagBrush>>#script: sends #id: to the widget "

	"  A unique, opaque ID string that can be assigned by users or by the system.
	If the developer passes an ID which is known not to be unique, the specified ID is ignored and the system-generated ID is used instead. "

	self propertyAt: 'id' put: aString
]
