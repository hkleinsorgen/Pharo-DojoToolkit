Extension { #name : #DijitMenuBarItem }

{ #category : '*DojoToolkit-Widgets' }
DijitMenuBarItem classSide >> functionName [

	^ 'dijit.MenuBarItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenuBarItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]
