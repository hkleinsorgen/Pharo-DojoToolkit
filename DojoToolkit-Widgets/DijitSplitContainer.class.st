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

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> activeSizing [
	"  If true, the children's size changes as you drag the bar; otherwise, the sizes don't change until you drop the bar (by mouse-up) "

	self access: 'activeSizing'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> activeSizing: aBoolean [
	"  If true, the children's size changes as you drag the bar; otherwise, the sizes don't change until you drop the bar (by mouse-up) "

	self propertyAt: 'activeSizing' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> beginSizing: e i: i [ 
	
	self call: 'beginSizing' withArguments: (Array with: e with: i)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> changeSizing: e [ 
	
	self call: 'changeSizing' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> cover [
	
	self access: 'cover'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> cover: aJsObject [
	
	self propertyAt: 'cover' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> dragOffset [
	
	self access: 'dragOffset'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> dragOffset: aNumber [
	
	self propertyAt: 'dragOffset' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> endSizing: e [ 
	
	self call: 'endSizing' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isDraggingLeft [
	
	self access: 'isDraggingLeft'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isDraggingLeft: aJsObject [
	
	self propertyAt: 'isDraggingLeft' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isHorizontal [
	
	self access: 'isHorizontal'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isHorizontal: aJsObject [
	
	self propertyAt: 'isHorizontal' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isSizing [
	
	self access: 'isSizing'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> isSizing: aJsObject [
	
	self propertyAt: 'isSizing' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> lastPoint [
	
	self access: 'lastPoint'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> lastPoint: aString [
	
	self propertyAt: 'lastPoint' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> legaliseSplitPoint: a [ 
	
	self call: 'legaliseSplitPoint' withArguments: (Array with: a)
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> movePoint [
	
	self call: 'movePoint'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> orientation [
	"  either 'horizontal' or vertical; indicates whether the children are arranged side-by-side or up/down. "

	self access: 'orientation'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> orientation: aString [
	"  either 'horizontal' or vertical; indicates whether the children are arranged side-by-side or up/down. "

	self propertyAt: 'orientation' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> originPos [
	
	self access: 'originPos'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> originPos: aJsObject [
	
	self propertyAt: 'originPos' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> paneHeight [
	
	self access: 'paneHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> paneHeight: aJsObject [
	
	self propertyAt: 'paneHeight' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> paneWidth [
	
	self access: 'paneWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> paneWidth: aJsObject [
	
	self propertyAt: 'paneWidth' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> persist [
	"  Save splitter positions in a cookie "

	self access: 'persist'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> persist: aBoolean [
	"  Save splitter positions in a cookie "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> screenToClientOffset [
	
	self access: 'screenToClientOffset'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> screenToClientOffset: aNumber [
	
	self propertyAt: 'screenToClientOffset' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizerWidth [
	"  Size in pixels of the bar between each child FIXME: this should be a CSS attribute (at 7 because css wants it to be 7 until we fix to css) "

	self access: 'sizerWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizerWidth: aNumber [
	"  Size in pixels of the bar between each child FIXME: this should be a CSS attribute (at 7 because css wants it to be 7 until we fix to css) "

	self propertyAt: 'sizerWidth' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizers [
	
	self access: 'sizers'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizers: anArray [
	
	self propertyAt: 'sizers' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizingSplitter [
	
	self access: 'sizingSplitter'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> sizingSplitter: aJsObject [
	
	self propertyAt: 'sizingSplitter' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> startPoint [
	
	self access: 'startPoint'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> startPoint: aJsObject [
	
	self propertyAt: 'startPoint' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> virtualSizer [
	
	self access: 'virtualSizer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSplitContainer >> virtualSizer: aJsObject [
	
	self propertyAt: 'virtualSizer' put: aJsObject
]
