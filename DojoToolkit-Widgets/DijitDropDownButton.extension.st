Extension { #name : #DijitDropDownButton }

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> addChild: widget insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> autoWidth [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self access: 'autoWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> autoWidth: aBoolean [
	"  Set to true to make the drop down at least as wide as this widget.
	Set to false if the drop down should just be its default width "

	self propertyAt: 'autoWidth' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> closeDropDown: focus [ 
	"  Closes the drop down on this widget "

	self call: 'closeDropDown' withArguments: (Array with: focus)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> dropDown [
	
	self access: 'dropDown'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> dropDown: aJsObject [
	
	self propertyAt: 'dropDown' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> dropDownContainer [
	
	self access: 'dropDownContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> dropDownContainer: aJsObject [
	
	self propertyAt: 'dropDownContainer' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> forceWidth [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self access: 'forceWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> forceWidth: aBoolean [
	"  Set to true to make the drop down exactly as wide as this widget.
	Overrides autoWidth. "

	self propertyAt: 'forceWidth' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton classSide >> functionName [

	^ 'dijit.form.DropDownButton'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> isLoaded [
	"  Returns whether or not the dropdown is loaded.
	This can be overridden in order to force a call to loadDropDown(). "

	self call: 'isLoaded'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> loadDropDown: loadCallback [ 
	"  Loads the data for the dropdown, and at some point, calls the given callback "

	self call: 'loadDropDown' withArguments: (Array with: loadCallback)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> maxHeight [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self access: 'maxHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> maxHeight: aNumber [
	"  The max height for our dropdown.
	Set to 0 for no max height.
	any dropdown taller than this will have scrollbars "

	self propertyAt: 'maxHeight' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> openDropDown [
	"  Opens the dropdown for this widget - it returns the return value of dijit.popup.open "

	self call: 'openDropDown'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> removeChild: widget [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: widget)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> state [
	
	self access: 'state'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> state: aString [
	
	self propertyAt: 'state' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitDropDownButton >> toggleDropDown [
	"  Toggle the drop-down widget; if it is up, close it, if not, open it "

	self call: 'toggleDropDown'
]
