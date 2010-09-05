Extension { #name : #DojoAutoSource }

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource classSide >> functionName [

	^ 'dojo.dnd.AutoSource'
]

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource >> onMouseDown: e [
	"  event processor for onmousedown "

	self eventAt: 'onMouseDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource >> onMouseMove: e [
	"  mouse event "

	self eventAt: 'onMouseMove' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource >> onMouseUp: e [
	"  event processor for onmouseup "

	self eventAt: 'onMouseUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource >> onOutEvent: anObject [
	"  this function is called once, when mouse is out of our container "

	self eventAt: 'onOutEvent' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Objects' }
DojoAutoSource >> onOverEvent: anObject [
	"  this function is called once, when mouse is over our container "

	self eventAt: 'onOverEvent' put: (anObject asFunction: #())
]
