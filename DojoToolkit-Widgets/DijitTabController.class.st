"
Lets the user select the currently shown pane in a TabContainer or StackContainer. TabController also monitors the TabContainer, and whenever a pane is added or deleted updates itself accordingly.
"
Class {
	#name : #DijitTabController,
	#superclass : #DijitStackController,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTabController class >> functionName [

	^ 'dijit.layout.TabController'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabController >> tabPosition [
	"  Defines where tabs go relative to the content.
	'top', 'bottom', 'left-h', 'right-h' "

	self access: 'tabPosition'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabController >> tabPosition: aString [
	"  Defines where tabs go relative to the content.
	'top', 'bottom', 'left-h', 'right-h' "

	self propertyAt: 'tabPosition' put: aString
]
