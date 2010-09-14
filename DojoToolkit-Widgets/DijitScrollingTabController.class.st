"
Set of tabs with left/right arrow keys and a menu to switch between tabs not all fitting on a single row. Works only for horizontal tabs (either above or below the content, not to the left or right).
"
Class {
	#name : #DijitScrollingTabController,
	#superclass : #DijitTabController,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitScrollingTabController class >> functionName [

	^ 'dijit.layout.ScrollingTabController'
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : #'functions-generated' }
DijitScrollingTabController >> createSmoothScroll: x [ 
	"  If an number argument is passed to the function, that horizontal pixel position is scrolled to.
	Otherwise the currently selected tab is scrolled to "

	self call: 'createSmoothScroll' withArguments: (Array with: x)
]

{ #category : #'functions-generated' }
DijitScrollingTabController >> doSlide: direction node: node [ 
	"  Scrolls the tab list to the left or right by 75% of the widget width. "

	self call: 'doSlide' withArguments: (Array with: direction with: node)
]

{ #category : #'functions-generated' }
DijitScrollingTabController >> doSlideLeft: e [ 
	"  Scrolls the menu to the left. "

	self call: 'doSlideLeft' withArguments: (Array with: e)
]

{ #category : #'functions-generated' }
DijitScrollingTabController >> doSlideRight: e [ 
	"  Scrolls the menu to the right. "

	self call: 'doSlideRight' withArguments: (Array with: e)
]

{ #category : #'events-generated' }
DijitScrollingTabController >> onAddChild: anObject [
	"  Called whenever a page is added to the container.
	Create button corresponding to the page. "

	self eventAt: 'onAddChild' put: (anObject asFunction: #(#page #insertIndex))
]

{ #category : #'events-generated' }
DijitScrollingTabController >> onRemoveChild: anObject [
	"  Called whenever a page is removed from the container.
	Remove the button corresponding to the page. "

	self eventAt: 'onRemoveChild' put: (anObject asFunction: #(#page #insertIndex))
]

{ #category : #'events-generated' }
DijitScrollingTabController >> onSelectChild: page [
	"  Called when a page has been selected in the StackContainer, either by me or by another StackController "

	self eventAt: 'onSelectChild' put: (page asFunction: #(#page))
]

{ #category : #'events-generated' }
DijitScrollingTabController >> onStartup: info [
	"  Called after StackContainer has finished initializing "

	self eventAt: 'onStartup' put: (info asFunction: #(#info))
]

{ #category : #'functions-generated' }
DijitScrollingTabController >> resize: dim [ 
	"  Hides or displays the buttons used to scroll the tab list and launch the menu that selects tabs. "

	self call: 'resize' withArguments: (Array with: dim)
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> tabStripClass [
	"  The css class to apply to the tab strip, if it is visible. "

	self access: 'tabStripClass'
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> tabStripClass: aString [
	"  The css class to apply to the tab strip, if it is visible. "

	self propertyAt: 'tabStripClass' put: aString
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> useMenu [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useMenu'
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> useMenu: aBoolean [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useMenu' put: aBoolean
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> useSlider [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useSlider'
]

{ #category : #'properties-generated' }
DijitScrollingTabController >> useSlider: aBoolean [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useSlider' put: aBoolean
]
