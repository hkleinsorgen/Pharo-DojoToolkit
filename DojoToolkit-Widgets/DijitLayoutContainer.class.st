"
Provides Delphi-style panel layout semantics. A LayoutContainer is a box with a specified size (like style='width: 500px; height: 500px;'), that contains children widgets marked with 'layoutAlign' of 'left', 'right', 'bottom', 'top', and 'client'. It takes it's children marked as left/top/bottom/right, and lays them out along the edges of the box, and then it takes the child marked 'client' and puts it into the remaining space in the middle. Left/right positioning is similar to CSS's 'float: left' and 'float: right', and top/bottom positioning would be similar to 'float: top' and 'float: bottom', if there were such CSS. Note that there can only be one client element, but there can be multiple left, right, top, or bottom elements.
"
Class {
	#name : #DijitLayoutContainer,
	#superclass : #DijitLayoutWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitLayoutContainer class >> functionName [

	^ 'dijit.layout.LayoutContainer'
]
