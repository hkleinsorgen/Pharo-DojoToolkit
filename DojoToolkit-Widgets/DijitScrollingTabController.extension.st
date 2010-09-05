Extension { #name : #DijitScrollingTabController }

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> createSmoothScroll: x [ 
	"  If an number argument is passed to the function, that horizontal pixel position is scrolled to.
	Otherwise the currently selected tab is scrolled to "

	self call: 'createSmoothScroll' withArguments: (Array with: x)
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> doSlide: direction node: node [ 
	"  Scrolls the tab list to the left or right by 75% of the widget width. "

	self call: 'doSlide' withArguments: (Array with: direction with: node)
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> doSlideLeft: e [ 
	"  Scrolls the menu to the left. "

	self call: 'doSlideLeft' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> doSlideRight: e [ 
	"  Scrolls the menu to the right. "

	self call: 'doSlideRight' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController classSide >> functionName [

	^ 'dijit.layout.ScrollingTabController'
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> onAddChild: anObject [
	"  Called whenever a page is added to the container.
	Create button corresponding to the page. "

	self eventAt: 'onAddChild' put: (anObject asFunction: #(#page #insertIndex))
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> onRemoveChild: anObject [
	"  Called whenever a page is removed from the container.
	Remove the button corresponding to the page. "

	self eventAt: 'onRemoveChild' put: (anObject asFunction: #(#page #insertIndex))
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> onSelectChild: page [
	"  Called when a page has been selected in the StackContainer, either by me or by another StackController "

	self eventAt: 'onSelectChild' put: (page asFunction: #(#page))
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> onStartup: info [
	"  Called after StackContainer has finished initializing "

	self eventAt: 'onStartup' put: (info asFunction: #(#info))
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> resize: dim [ 
	"  Hides or displays the buttons used to scroll the tab list and launch the menu that selects tabs. "

	self call: 'resize' withArguments: (Array with: dim)
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> tabStripClass [
	"  The css class to apply to the tab strip, if it is visible. "

	self access: 'tabStripClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> tabStripClass: aString [
	"  The css class to apply to the tab strip, if it is visible. "

	self propertyAt: 'tabStripClass' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> useMenu [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useMenu'
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> useMenu: aBoolean [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useMenu' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> useSlider [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useSlider'
]

{ #category : '*DojoToolkit-Widgets' }
DijitScrollingTabController >> useSlider: aBoolean [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useSlider' put: aBoolean
]
