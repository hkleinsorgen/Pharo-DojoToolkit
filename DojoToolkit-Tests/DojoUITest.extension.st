Extension { #name : #DojoUITest }

{ #category : '*DojoToolkit-Tests' }
DojoUITest >> function [

	^ DojoUI functionName
]

{ #category : '*DojoToolkit-Tests' }
DojoUITest >> testById [

	self 
		assert: (self dojoUI byId: '42')
		equals: self function , '.byId("42")'
]

{ #category : '*DojoToolkit-Tests' }
DojoUITest >> testOverride [

	| tree |
	tree := (self dojoUI byId: #tree) new tree 
		overrideGetTooltip: (JSStream on: 'return "Tooltip"');		
		overrideGetIconClass: (JSStream on: 'return "Icon"').
	self 
		assert: tree
		equals: 'new dijit.Tree({', (self keyQuote: 'getTooltip'), ':function(item){return "Tooltip"},', (self keyQuote: 'getIconClass'), ':function(item,opened){return "Icon"}})'
]
