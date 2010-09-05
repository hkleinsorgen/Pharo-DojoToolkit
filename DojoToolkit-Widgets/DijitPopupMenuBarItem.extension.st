Extension { #name : #DijitPopupMenuBarItem }

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuBarItem classSide >> functionName [

	^ 'dijit.PopupMenuBarItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuBarItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
