Extension { #name : #DijitAccordionPane }

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionPane classSide >> functionName [

	^ 'dijit.layout.AccordionPane'
]

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionPane >> onSelected: anObject [
	"  called when this pane is selected "

	self eventAt: 'onSelected' put: (anObject asFunction: #())
]
