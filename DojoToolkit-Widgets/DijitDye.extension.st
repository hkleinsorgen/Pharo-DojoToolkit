Extension { #name : #DijitDye }

{ #category : '*DojoToolkit-Widgets' }
DijitDye >> fillCell: cell blankGif: blankGif [ 
	"  Add cell DOMNode inner structure "

	self call: 'fillCell' withArguments: (Array with: cell with: blankGif)
]

{ #category : '*DojoToolkit-Widgets' }
DijitDye classSide >> functionName [

	^ 'dijit.Dye'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDye >> getValue [
	"  For example color hex value, emoticon ascii value etc, entity hex value "

	self call: 'getValue'
]
