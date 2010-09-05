"
A Container widget with sizing handles in-between each child. Contains multiple children widgets, all of which are displayed side by side (either horizontally or vertically); there's a bar between each of the children, and you can adjust the relative size of each child by dragging the bars. You must specify a size (width and height) for the SplitContainer.
"
Class {
	#name : #DijitSplitContainer,
	#superclass : #DijitLayoutWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer class >> functionName [

	^ 'dijit.layout.SplitContainer'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> activeSizing [
	"  If true, the children's size changes as you drag the bar; otherwise, the sizes don't change until you drop the bar (by mouse-up) "

	self access: 'activeSizing'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> activeSizing: aBoolean [
	"  If true, the children's size changes as you drag the bar; otherwise, the sizes don't change until you drop the bar (by mouse-up) "

	self propertyAt: 'activeSizing' put: aBoolean
]

{ #category : #'functions-generated' }
DijitSplitContainer >> beginSizing: e i: i [ 
	
	self call: 'beginSizing' withArguments: (Array with: e with: i)
]

{ #category : #'functions-generated' }
DijitSplitContainer >> changeSizing: e [ 
	
	self call: 'changeSizing' withArguments: (Array with: e)
]

{ #category : #'properties-generated' }
DijitSplitContainer >> cover [
	
	self access: 'cover'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> cover: aJsObject [
	
	self propertyAt: 'cover' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> dragOffset [
	
	self access: 'dragOffset'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> dragOffset: aNumber [
	
	self propertyAt: 'dragOffset' put: aNumber
]

{ #category : #'functions-generated' }
DijitSplitContainer >> endSizing: e [ 
	
	self call: 'endSizing' withArguments: (Array with: e)
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isDraggingLeft [
	
	self access: 'isDraggingLeft'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isDraggingLeft: aJsObject [
	
	self propertyAt: 'isDraggingLeft' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isHorizontal [
	
	self access: 'isHorizontal'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isHorizontal: aJsObject [
	
	self propertyAt: 'isHorizontal' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isSizing [
	
	self access: 'isSizing'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> isSizing: aJsObject [
	
	self propertyAt: 'isSizing' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> lastPoint [
	
	self access: 'lastPoint'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> lastPoint: aString [
	
	self propertyAt: 'lastPoint' put: aString
]

{ #category : #'functions-generated' }
DijitSplitContainer >> legaliseSplitPoint: a [ 
	
	self call: 'legaliseSplitPoint' withArguments: (Array with: a)
]

{ #category : #'functions-generated' }
DijitSplitContainer >> movePoint [
	
	self call: 'movePoint'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> orientation [
	"  either 'horizontal' or vertical; indicates whether the children are arranged side-by-side or up/down. "

	self access: 'orientation'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> orientation: aString [
	"  either 'horizontal' or vertical; indicates whether the children are arranged side-by-side or up/down. "

	self propertyAt: 'orientation' put: aString
]

{ #category : #'properties-generated' }
DijitSplitContainer >> originPos [
	
	self access: 'originPos'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> originPos: aJsObject [
	
	self propertyAt: 'originPos' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> paneHeight [
	
	self access: 'paneHeight'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> paneHeight: aJsObject [
	
	self propertyAt: 'paneHeight' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> paneWidth [
	
	self access: 'paneWidth'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> paneWidth: aJsObject [
	
	self propertyAt: 'paneWidth' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> persist [
	"  Save splitter positions in a cookie "

	self access: 'persist'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> persist: aBoolean [
	"  Save splitter positions in a cookie "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : #'properties-generated' }
DijitSplitContainer >> screenToClientOffset [
	
	self access: 'screenToClientOffset'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> screenToClientOffset: aNumber [
	
	self propertyAt: 'screenToClientOffset' put: aNumber
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizerWidth [
	"  Size in pixels of the bar between each child FIXME: this should be a CSS attribute (at 7 because css wants it to be 7 until we fix to css) "

	self access: 'sizerWidth'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizerWidth: aNumber [
	"  Size in pixels of the bar between each child FIXME: this should be a CSS attribute (at 7 because css wants it to be 7 until we fix to css) "

	self propertyAt: 'sizerWidth' put: aNumber
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizers [
	
	self access: 'sizers'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizers: anArray [
	
	self propertyAt: 'sizers' put: anArray
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizingSplitter [
	
	self access: 'sizingSplitter'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> sizingSplitter: aJsObject [
	
	self propertyAt: 'sizingSplitter' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> startPoint [
	
	self access: 'startPoint'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> startPoint: aJsObject [
	
	self propertyAt: 'startPoint' put: aJsObject
]

{ #category : #'properties-generated' }
DijitSplitContainer >> virtualSizer [
	
	self access: 'virtualSizer'
]

{ #category : #'properties-generated' }
DijitSplitContainer >> virtualSizer: aJsObject [
	
	self propertyAt: 'virtualSizer' put: aJsObject
]
