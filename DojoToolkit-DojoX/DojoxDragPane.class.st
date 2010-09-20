"
A small widget which takes a node with overflow:auto and allows dragging to position the content. Useful with images, or for just adding 'something' to a overflow-able div.
"
Class {
	#name : #DojoxDragPane,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-DojoX'
}

{ #category : #'accessing-generated' }
DojoxDragPane class >> functionName [

	^ 'dojox.layout.DragPane'
]

{ #category : #'properties-generated' }
DojoxDragPane >> invert [
	"  Naturally, the behavior is to invert the axis of the drag.
	Setting invert:false will make the pane drag in the same direction as the mouse. "

	self access: 'invert'
]

{ #category : #'properties-generated' }
DojoxDragPane >> invert: aBoolean [
	"  Naturally, the behavior is to invert the axis of the drag.
	Setting invert:false will make the pane drag in the same direction as the mouse. "

	self propertyAt: 'invert' put: aBoolean
]
