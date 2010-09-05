"
A BorderContainer is a box with a specified size, such as style='width: 500px; height: 500px;', that contains a child widget marked region='center' and optionally children widgets marked region equal to 'top', 'bottom', 'leading', 'trailing', 'left' or 'right'. Children along the edges will be laid out according to width or height dimensions and may include optional splitters (splitter='true') to make them resizable by the user. The remaining space is designated for the center region. NOTE: Splitters must not be more than 50 pixels in width. The outer size must be specified on the BorderContainer node. Width must be specified for the sides and height for the top and bottom, respectively. No dimensions should be specified on the center; it will fill the remaining space. Regions named 'leading' and 'trailing' may be used just like 'left' and 'right' except that they will be reversed in right-to-left environments.
"
Class {
	#name : #DijitBorderContainer,
	#superclass : #DijitLayoutWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer class >> functionName [

	^ 'dijit.layout.BorderContainer'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> cs [
	
	self access: 'cs'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> cs: aJsObject [
	
	self propertyAt: 'cs' put: aJsObject
]

{ #category : #'properties-generated' }
DijitBorderContainer >> design [
	"  Which design is used for the layout: - 'headline' (default) where the top and bottom extend the full width of the container - 'sidebar' where the left and right sides extend from top to bottom. "

	self access: 'design'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> design: aString [
	"  Which design is used for the layout: - 'headline' (default) where the top and bottom extend the full width of the container - 'sidebar' where the left and right sides extend from top to bottom. "

	self propertyAt: 'design' put: aString
]

{ #category : #'functions-generated' }
DijitBorderContainer >> getSplitter: region [ 
	"  Returns the widget responsible for rendering the splitter associated with region "

	self call: 'getSplitter' withArguments: (Array with: region)
]

{ #category : #'properties-generated' }
DijitBorderContainer >> gutters [
	"  Give each pane a border and margin.
	Margin determined by domNode.paddingLeft.
	When false, only resizable panes have a gutter (i.e.
	draggable splitter) for resizing. "

	self access: 'gutters'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> gutters: aBoolean [
	"  Give each pane a border and margin.
	Margin determined by domNode.paddingLeft.
	When false, only resizable panes have a gutter (i.e.
	draggable splitter) for resizing. "

	self propertyAt: 'gutters' put: aBoolean
]

{ #category : #'properties-generated' }
DijitBorderContainer >> liveSplitters [
	"  Specifies whether splitters resize as you drag (true) or only upon mouseup (false) "

	self access: 'liveSplitters'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> liveSplitters: aBoolean [
	"  Specifies whether splitters resize as you drag (true) or only upon mouseup (false) "

	self propertyAt: 'liveSplitters' put: aBoolean
]

{ #category : #'properties-generated' }
DijitBorderContainer >> persist [
	"  Save splitter positions in a cookie. "

	self access: 'persist'
]

{ #category : #'properties-generated' }
DijitBorderContainer >> persist: aBoolean [
	"  Save splitter positions in a cookie. "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : #'functions-generated' }
DijitBorderContainer >> resize: newSize currentSize: currentSize [ 
	"  Change size mode: When changeSize is specified, changes the marginBox of this widget and forces it to relayout its contents accordingly.
	changeSize may specify height, width, or both.
	If resultSize is specified it indicates the size the widget will become after changeSize has been applied.
	Notification mode: When changeSize is null, indicates that the caller has already changed the size of the widget, or perhaps it changed because the browser window was resized.
	Tells widget to relayout its contents accordingly.
	If resultSize is also specified it indicates the size the widget has become.
	In either mode, this method also: 1.
	Sets this.borderBox and this.contentBox to the new size of the widget.
	Queries the current domNode size if necessary.
	2.
	Calls layout() to resize contents (and maybe adjust child widgets) "

	self call: 'resize' withArguments: (Array with: newSize with: currentSize)
]
