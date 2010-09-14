"
Holds a set of panes where every pane's title is visible, but only one pane's content is visible at a time, and switching between panes is visualized by sliding the other panes up/down.
"
Class {
	#name : #DijitAccordionContainer,
	#superclass : #DijitStackContainer,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitAccordionContainer class >> functionName [

	^ 'dijit.layout.AccordionContainer'
]

{ #category : #'properties-generated' }
DijitAccordionContainer >> buttonWidget [
	"  The name of the widget used to display the title of each pane "

	self access: 'buttonWidget'
]

{ #category : #'properties-generated' }
DijitAccordionContainer >> buttonWidget: aString [
	"  The name of the widget used to display the title of each pane "

	self propertyAt: 'buttonWidget' put: aString
]

{ #category : #'properties-generated' }
DijitAccordionContainer >> duration [
	"  Amount of time (in ms) it takes to slide panes "

	self access: 'duration'
]

{ #category : #'properties-generated' }
DijitAccordionContainer >> duration: aNumber [
	"  Amount of time (in ms) it takes to slide panes "

	self propertyAt: 'duration' put: aNumber
]
