"
Deprecated widget. Use dijit.layout.ContentPane instead.
"
Class {
	#name : #DijitAccordionPane,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitAccordionPane class >> functionName [

	^ 'dijit.layout.AccordionPane'
]

{ #category : #'events-generated' }
DijitAccordionPane >> onSelected: anObject [
	"  called when this pane is selected "

	self eventAt: 'onSelected' put: (anObject asFunction: #())
]
