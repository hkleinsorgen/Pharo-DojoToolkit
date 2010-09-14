"
Item in a MenuBar that's clickable, and doesn't spawn a submenu when pressed (or hovered)
"
Class {
	#name : #DijitMenuBarItem,
	#superclass : #DijitMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitMenuBarItem class >> functionName [

	^ 'dijit.MenuBarItem'
]

{ #category : #'events-generated' }
DijitMenuBarItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
