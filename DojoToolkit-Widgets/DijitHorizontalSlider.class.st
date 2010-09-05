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

{ #category : #'functions-generated' }
DijitHorizontalSlider >> addChild: widget insertIndex: insertIndex [ 
	"  Inserts specified child widget's dom node as a child of this widget's container node, and possibly does other processing (such as layout) "

	self call: 'addChild' withArguments: (Array with: widget with: insertIndex)
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> clickSelect [
	"  If clicking the slider bar changes the value or not "

	self access: 'clickSelect'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> clickSelect: aBoolean [
	"  If clicking the slider bar changes the value or not "

	self propertyAt: 'clickSelect' put: aBoolean
]

{ #category : #'functions-generated' }
DijitHorizontalSlider >> decrement: e [ 
	"  Decrement slider "

	self call: 'decrement' withArguments: (Array with: e)
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> discreteValues [
	"  If specified, indicates that the slider handle has only 'discreteValues' possible positions, and that after dragging the handle, it will snap to the nearest possible position.
	Thus, the slider has only 'discreteValues' possible values.
	For example, if minimum=10, maxiumum=30, and discreteValues=3, then the slider handle has three possible positions, representing values 10, 20, or 30.
	If discreteValues is not specified or if it's value is higher than the number of pixels in the slider bar, then the slider handle can be moved freely, and the slider's value will be computed/reported based on pixel position (in this case it will likely be fractional, such as 123.456789). "

	self access: 'discreteValues'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> discreteValues: aNumber [
	"  If specified, indicates that the slider handle has only 'discreteValues' possible positions, and that after dragging the handle, it will snap to the nearest possible position.
	Thus, the slider has only 'discreteValues' possible values.
	For example, if minimum=10, maxiumum=30, and discreteValues=3, then the slider handle has three possible positions, representing values 10, 20, or 30.
	If discreteValues is not specified or if it's value is higher than the number of pixels in the slider bar, then the slider handle can be moved freely, and the slider's value will be computed/reported based on pixel position (in this case it will likely be fractional, such as 123.456789). "

	self propertyAt: 'discreteValues' put: aNumber
]

{ #category : #'functions-generated' }
DijitHorizontalSlider >> getIndexOfChild: child [ 
	"  Gets the index of the child in this container or -1 if not found "

	self call: 'getIndexOfChild' withArguments: (Array with: child)
]

{ #category : #'functions-generated' }
DijitHorizontalSlider >> hasChildren [
	"  Returns true if widget has children, i.e.
	if this.containerNode contains something. "

	self call: 'hasChildren'
]

{ #category : #'functions-generated' }
DijitHorizontalSlider >> increment: e [ 
	"  Increment slider "

	self call: 'increment' withArguments: (Array with: e)
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> maximum [
	"  The maximum value the slider can be set to. "

	self access: 'maximum'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> maximum: aNumber [
	"  The maximum value the slider can be set to. "

	self propertyAt: 'maximum' put: aNumber
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> minimum [
	"  The minimum value the slider can be set to. "

	self access: 'minimum'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> minimum: aNumber [
	"  The minimum value the slider can be set to. "

	self propertyAt: 'minimum' put: aNumber
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> pageIncrement [
	"  If discreteValues is also specified, this indicates the amount of clicks (ie, snap positions) that the slider handle is moved via pageup/pagedown keys.
	If discreteValues is not specified, it indicates the number of pixels. "

	self access: 'pageIncrement'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> pageIncrement: aNumber [
	"  If discreteValues is also specified, this indicates the amount of clicks (ie, snap positions) that the slider handle is moved via pageup/pagedown keys.
	If discreteValues is not specified, it indicates the number of pixels. "

	self propertyAt: 'pageIncrement' put: aNumber
]

{ #category : #'functions-generated' }
DijitHorizontalSlider >> removeChild: widget [ 
	"  Removes the passed widget instance from this widget but does not destroy it.
	You can also pass in an integer indicating the index within the container to remove "

	self call: 'removeChild' withArguments: (Array with: widget)
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> showButtons [
	"  Show increment/decrement buttons at the ends of the slider? "

	self access: 'showButtons'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> showButtons: aBoolean [
	"  Show increment/decrement buttons at the ends of the slider? "

	self propertyAt: 'showButtons' put: aBoolean
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> slideDuration [
	"  The time in ms to take to animate the slider handle from 0% to 100%, when clicking the slider bar to make the handle move. "

	self access: 'slideDuration'
]

{ #category : #'properties-generated' }
DijitHorizontalSlider >> slideDuration: aNumber [
	"  The time in ms to take to animate the slider handle from 0% to 100%, when clicking the slider bar to make the handle move. "

	self propertyAt: 'slideDuration' put: aNumber
]
