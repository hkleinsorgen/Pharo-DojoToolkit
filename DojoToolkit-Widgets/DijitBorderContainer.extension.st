Extension { #name : #DijitBorderContainer }

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> cs [
	
	self access: 'cs'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> cs: aJsObject [
	
	self propertyAt: 'cs' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> design [
	"  Which design is used for the layout: - 'headline' (default) where the top and bottom extend the full width of the container - 'sidebar' where the left and right sides extend from top to bottom. "

	self access: 'design'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> design: aString [
	"  Which design is used for the layout: - 'headline' (default) where the top and bottom extend the full width of the container - 'sidebar' where the left and right sides extend from top to bottom. "

	self propertyAt: 'design' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer classSide >> functionName [

	^ 'dijit.layout.BorderContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> getSplitter: region [ 
	"  Returns the widget responsible for rendering the splitter associated with region "

	self call: 'getSplitter' withArguments: (Array with: region)
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> gutters [
	"  Give each pane a border and margin.
	Margin determined by domNode.paddingLeft.
	When false, only resizable panes have a gutter (i.e.
	draggable splitter) for resizing. "

	self access: 'gutters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> gutters: aBoolean [
	"  Give each pane a border and margin.
	Margin determined by domNode.paddingLeft.
	When false, only resizable panes have a gutter (i.e.
	draggable splitter) for resizing. "

	self propertyAt: 'gutters' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> liveSplitters [
	"  Specifies whether splitters resize as you drag (true) or only upon mouseup (false) "

	self access: 'liveSplitters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> liveSplitters: aBoolean [
	"  Specifies whether splitters resize as you drag (true) or only upon mouseup (false) "

	self propertyAt: 'liveSplitters' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> persist [
	"  Save splitter positions in a cookie. "

	self access: 'persist'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBorderContainer >> persist: aBoolean [
	"  Save splitter positions in a cookie. "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
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
