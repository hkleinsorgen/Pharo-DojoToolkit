"
A menu bar, listing menu choices horizontally, like the 'File' menu in most desktop applications
"
Class {
	#name : #DijitMenuBar,
	#superclass : #DijitMenuBase,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitMenuBar class >> functionName [

	^ 'dijit.MenuBar'
]

{ #category : #'functions-generated' }
DijitMenuBar >> focusChild: item [ 
	"  Focus widget. "

	self call: 'focusChild' withArguments: (Array with: item)
]

{ #category : #'events-generated' }
DijitMenuBar >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitMenuBar >> onItemClick: anObject [
	"  Handle clicks on an item. "

	self eventAt: 'onItemClick' put: (anObject asFunction: #(#item #event))
]
