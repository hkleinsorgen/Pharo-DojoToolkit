Extension { #name : #DojoTest }

{ #category : '*DojoToolkit-Tests' }
DojoTest >> function [

	^ Dojo functionName
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testAddOnLoad [

	self 
		assert: (self dojo addOnLoad: 'loadFunction')
		equals: self function , '.addOnLoad("loadFunction")'.

	self 
		assert: (self dojo addOnLoad: 'alert("OK")' asFunction)
		equals: self function , '.addOnLoad(function(){alert("OK")})'.
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testById [

	self 
		assert: (self dojo byId: '42')
		equals: self function , '.byId("42")'.

	self 
		assert: (self dojo byId: #id42)
		equals: self function , '.byId("id42")'.
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testConfiguration [
	" assert that a djConfig has been define "

	self 
		scriptsAdddedBy: [: dojo | dojo dojoConfiguration debugAtAllCosts: true ]
		do: 
		[: newLoadScripts : scriptGenerator|
			self assert: newLoadScripts isEmpty.
			self assert: scriptGenerator globalScripts isEmpty.
			self assert: scriptGenerator configurationScript equals: 'var djConfig={', (self keyQuote: 'debugAtAllCosts'), ':true}'.
		].
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testEventMembers [

	#( #charCode #charOrCode #keyCode #layerX #layerY #pageX #pageY #relatedTarget #target ) 
		do: [: property | self assert: ( self dojo event perform: property ) equals: 'event.' , property ].
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testOverride [

	| body |
	self 
		assert: ((self dojoUI byId: #tree) tree override: 'getIconClass' with: ((body := 'return opened ? "open" : "close"') asFunction: #(#item opened) ))
		equals: 'dijit.byId("tree").getIconClass=function(item,opened){', body, '}'
]

{ #category : '*DojoToolkit-Tests' }
DojoTest >> testRequire [

	self 
		scriptsAdddedBy: [: dojo | dojo require: 'foobar' ]
		do: 
		[: newLoadScripts : scriptGenerator |
			self assert: newLoadScripts isEmpty.
			self assert: scriptGenerator globalScripts size = 1.
			self assert: scriptGenerator globalScripts first equals: self function , '.require("foobar")'
		].
]
