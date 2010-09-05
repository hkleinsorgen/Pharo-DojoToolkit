"
A container for widgets (ContentPanes, for example) That displays only one Widget at a time. Publishes topics [widgetId]-addChild, [widgetId]-removeChild, and [widgetId]-selectChild Can be base class for container, Wizard, Show, etc.
"
Class {
	#name : #DijitStackContainer,
	#superclass : #DijitLayoutWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer class >> functionName [

	^ 'dijit.layout.StackContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> back [
	"  Go back to previous page. "

	self call: 'back'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> closeChild: page [ 
	"  Callback when user clicks the [X] to remove a page.
	If onClose() returns true then remove and destroy the child. "

	self call: 'closeChild' withArguments: (Array with: page)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> doLayout [
	"  If true, change the size of my currently displayed child to match my size "

	self access: 'doLayout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> doLayout: aBoolean [
	"  If true, change the size of my currently displayed child to match my size "

	self propertyAt: 'doLayout' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> forward [
	"  Advance to next page. "

	self call: 'forward'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> persist [
	"  Remembers the selected child across sessions "

	self access: 'persist'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> persist: aBoolean [
	"  Remembers the selected child across sessions "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> selectChild: page animate: animate [ 
	"  Show the given widget (which must be one of my children) "

	self call: 'selectChild' withArguments: (Array with: page with: animate)
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> selectedChildWidget [
	"  References the currently selected child widget, if any.
	Adjust selected child with selectChild() method. "

	self access: 'selectedChildWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStackContainer >> selectedChildWidget: aJsObject [
	"  References the currently selected child widget, if any.
	Adjust selected child with selectChild() method. "

	self propertyAt: 'selectedChildWidget' put: aJsObject
]
