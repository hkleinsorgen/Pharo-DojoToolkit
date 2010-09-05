"
Interface for the JS Object associated with a palette cell (i.e. DOMNode)
"
Class {
	#name : #DijitDye,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDye class >> functionName [

	^ 'dijit.Dye'
]

{ #category : #'functions-generated' }
DijitDye >> fillCell: cell blankGif: blankGif [ 
	"  Add cell DOMNode inner structure "

	self call: 'fillCell' withArguments: (Array with: cell with: blankGif)
]

{ #category : #'functions-generated' }
DijitDye >> getValue [
	"  For example color hex value, emoticon ascii value etc, entity hex value "

	self call: 'getValue'
]
