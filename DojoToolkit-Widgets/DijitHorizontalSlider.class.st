"
A form widget that allows one to select a value with a horizontally draggable handle
"
Class {
	#name : #DijitHorizontalSlider,
	#superclass : #DijitFormValueWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider class >> functionName [

	^ 'dijit.form.HorizontalSlider'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> addChild: widget insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> clickSelect [
	"  If clicking the slider bar changes the value or not "

	self access: 'clickSelect'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> clickSelect: aBoolean [
	"  If clicking the slider bar changes the value or not "

	self propertyAt: 'clickSelect' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> decrement: e [ 
	"  Decrement slider "

	self call: 'decrement' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> discreteValues [
	"  If specified, indicates that the slider handle has only 'discreteValues' possible positions, and that after dragging the handle, it will snap to the nearest possible position.
	Thus, the slider has only 'discreteValues' possible values.
	For example, if minimum=10, maxiumum=30, and discreteValues=3, then the slider handle has three possible positions, representing values 10, 20, or 30.
	If discreteValues is not specified or if it's value is higher than the number of pixels in the slider bar, then the slider handle can be moved freely, and the slider's value will be computed/reported based on pixel position (in this case it will likely be fractional, such as 123.456789). "

	self access: 'discreteValues'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> discreteValues: aNumber [
	"  If specified, indicates that the slider handle has only 'discreteValues' possible positions, and that after dragging the handle, it will snap to the nearest possible position.
	Thus, the slider has only 'discreteValues' possible values.
	For example, if minimum=10, maxiumum=30, and discreteValues=3, then the slider handle has three possible positions, representing values 10, 20, or 30.
	If discreteValues is not specified or if it's value is higher than the number of pixels in the slider bar, then the slider handle can be moved freely, and the slider's value will be computed/reported based on pixel position (in this case it will likely be fractional, such as 123.456789). "

	self propertyAt: 'discreteValues' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> increment: e [ 
	"  Increment slider "

	self call: 'increment' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> maximum [
	"  The maximum value the slider can be set to. "

	self access: 'maximum'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> maximum: aNumber [
	"  The maximum value the slider can be set to. "

	self propertyAt: 'maximum' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> minimum [
	"  The minimum value the slider can be set to. "

	self access: 'minimum'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> minimum: aNumber [
	"  The minimum value the slider can be set to. "

	self propertyAt: 'minimum' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> pageIncrement [
	"  If discreteValues is also specified, this indicates the amount of clicks (ie, snap positions) that the slider handle is moved via pageup/pagedown keys.
	If discreteValues is not specified, it indicates the number of pixels. "

	self access: 'pageIncrement'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> pageIncrement: aNumber [
	"  If discreteValues is also specified, this indicates the amount of clicks (ie, snap positions) that the slider handle is moved via pageup/pagedown keys.
	If discreteValues is not specified, it indicates the number of pixels. "

	self propertyAt: 'pageIncrement' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> removeChild: widget [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: widget)
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> showButtons [
	"  Show increment/decrement buttons at the ends of the slider? "

	self access: 'showButtons'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> showButtons: aBoolean [
	"  Show increment/decrement buttons at the ends of the slider? "

	self propertyAt: 'showButtons' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> slideDuration [
	"  The time in ms to take to animate the slider handle from 0% to 100%, when clicking the slider bar to make the handle move. "

	self access: 'slideDuration'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalSlider >> slideDuration: aNumber [
	"  The time in ms to take to animate the slider handle from 0% to 100%, when clicking the slider bar to make the handle move. "

	self propertyAt: 'slideDuration' put: aNumber
]
