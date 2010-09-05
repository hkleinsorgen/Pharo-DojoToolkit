Extension { #name : #DijitMenuItem }

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> accelKey [
	"  Text for the accelerator (shortcut) key combination.
	Note that although Menu can display accelerator keys there is no infrastructure to actually catch and execute these accelerators. "

	self access: 'accelKey'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> accelKey: aString [
	"  Text for the accelerator (shortcut) key combination.
	Note that although Menu can display accelerator keys there is no infrastructure to actually catch and execute these accelerators. "

	self propertyAt: 'accelKey' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> disabled [
	"  If true, the menu item is disabled.
	If false, the menu item is enabled. "

	self access: 'disabled'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> disabled: aBoolean [
	"  If true, the menu item is disabled.
	If false, the menu item is enabled. "

	self propertyAt: 'disabled' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> focus [
	"  Focus on this MenuItem "

	self call: 'focus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem classSide >> functionName [

	^ 'dijit.MenuItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> getIndexInParent [
	"  Returns the index of this widget within its container parent.
	It returns -1 if the parent does not exist, or if the parent is not a dijit._Container "

	self call: 'getIndexInParent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> getNextSibling [
	"  Returns null if this is the last child of the parent, otherwise returns the next element sibling to the 'right'. "

	self call: 'getNextSibling'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> getParent [
	"  Returns the parent widget of this widget, assuming the parent specifies isContainer "

	self call: 'getParent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> getPreviousSibling [
	"  Returns null if this is the first child of the parent, otherwise returns the next element sibling to the 'left'. "

	self call: 'getPreviousSibling'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> setDisabled: disabled [ 
	"  Deprecated.
	Use set('disabled', bool) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> setLabel: content [ 
	"  Deprecated.
	Use set('label', ...) instead. "

	self call: 'setLabel' withArguments: (Array with: content)
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuItem >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
