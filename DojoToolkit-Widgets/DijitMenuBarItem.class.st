"
Item in a MenuBar that's clickable, and doesn't spawn a submenu when pressed (or hovered)
"
Class {
	#name : #DijitMenuBarItem,
	#superclass : #DijitMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitMenuBarItem class >> functionName [

	^ 'dijit.MenuBarItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuBarItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
