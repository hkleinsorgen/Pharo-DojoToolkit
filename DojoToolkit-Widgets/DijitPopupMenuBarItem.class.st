"
Item in a MenuBar like 'File' or 'Edit', that spawns a submenu when pressed (or hovered)
"
Class {
	#name : #DijitPopupMenuBarItem,
	#superclass : #DijitPopupMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuBarItem class >> functionName [

	^ 'dijit.PopupMenuBarItem'
]

{ #category : #'events-generated' }
DijitPopupMenuBarItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
