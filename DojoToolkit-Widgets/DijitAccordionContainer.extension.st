Extension { #name : #DijitAccordionContainer }

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer >> buttonWidget [
	"  The name of the widget used to display the title of each pane "

	self access: 'buttonWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer >> buttonWidget: aString [
	"  The name of the widget used to display the title of each pane "

	self propertyAt: 'buttonWidget' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer >> duration [
	"  Amount of time (in ms) it takes to slide panes "

	self access: 'duration'
]

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer >> duration: aNumber [
	"  Amount of time (in ms) it takes to slide panes "

	self propertyAt: 'duration' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer classSide >> functionName [

	^ 'dijit.layout.AccordionContainer'
]
