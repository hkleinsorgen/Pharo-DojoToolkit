"
Holds a set of panes where every pane's title is visible, but only one pane's content is visible at a time, and switching between panes is visualized by sliding the other panes up/down.
"
Class {
	#name : #DijitAccordionContainer,
	#superclass : #DijitStackContainer,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitAccordionContainer class >> functionName [

	^ 'dijit.layout.AccordionContainer'
]

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
