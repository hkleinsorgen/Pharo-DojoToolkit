Class {
	#name : #DojoUITest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #accessing }
DojoUITest >> function [

	^ DojoUI functionName
]

{ #category : #tests }
DojoUITest >> testById [

	self 
		assert: (self dojoUI byId: '42')
		equals: self function , '.byId("42")'
]

{ #category : #tests }
DojoUITest >> testOverride [

	| tree |
	tree := (self dojoUI byId: #tree) new tree 
		overrideGetTooltip: (JSStream on: 'return "Tooltip"');		
		overrideGetIconClass: (JSStream on: 'return "Icon"').
	self 
		assert: tree
		equals: 'new dijit.Tree({', (self keyQuote: 'getTooltip'), ':function(item){return "Tooltip"},', (self keyQuote: 'getIconClass'), ':function(item,opened){return "Icon"}})'
]
