"
A TabContainer is a container that has multiple panes, but shows only one pane at a time. There are a set of tabs corresponding to each pane, where each tab has the name (aka title) of the pane, and optionally a close button.
"
Class {
	#name : #DijitTabContainer,
	#superclass : #DijitTabContainerBase,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer class >> functionName [

	^ 'dijit.layout.TabContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> controllerWidget [
	"  An optional parameter to override the widget used to display the tab labels "

	self access: 'controllerWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> controllerWidget: aString [
	"  An optional parameter to override the widget used to display the tab labels "

	self propertyAt: 'controllerWidget' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> useMenu [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useMenu'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> useMenu: aBoolean [
	"  True if a menu should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useMenu' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> useSlider [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self access: 'useSlider'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainer >> useSlider: aBoolean [
	"  True if a slider should be used to select tabs when they are too wide to fit the TabContainer, false otherwise. "

	self propertyAt: 'useSlider' put: aBoolean
]
