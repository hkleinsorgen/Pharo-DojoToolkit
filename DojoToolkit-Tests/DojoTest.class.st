Class {
	#name : #DojoTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #accessing }
DojoTest >> function [

	^ Dojo functionName
]

{ #category : #tests }
DojoTest >> testAddOnLoad [

	self 
		assert: (self dojo addOnLoad: 'loadFunction')
		equals: self function , '.addOnLoad("loadFunction")'.

	self 
		assert: (self dojo addOnLoad: 'alert("OK")' asFunction)
		equals: self function , '.addOnLoad(function(){alert("OK")})'.
]

{ #category : #tests }
DojoTest >> testById [

	self 
		assert: (self dojo byId: '42')
		equals: self function , '.byId("42")'.

	self 
		assert: (self dojo byId: #id42)
		equals: self function , '.byId("id42")'.
]

{ #category : #tests }
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

{ #category : #tests }
DojoTest >> testEventMembers [

	#( #charCode #charOrCode #keyCode #layerX #layerY #pageX #pageY #relatedTarget #target ) 
		do: [: property | self assert: ( self dojo event perform: property ) equals: 'event.' , property ].
]

{ #category : #tests }
DojoTest >> testFunctionName [

	DojoConstructableObject allSubclasses do: [ : subclass |
		[ subclass functionName ] on: SubclassResponsibilityError do: [ : ex |
			self assert: false description: subclass name, ' does not implement #functionName'
		]
	].
]

{ #category : #tests }
DojoTest >> testOverride [

	| body |
	self 
		assert: ((self dojoUI byId: #tree) tree override: 'getIconClass' with: ((body := 'return opened ? "open" : "close"') asFunction: #(#item opened) ))
		equals: 'dijit.byId("tree").getIconClass=function(item,opened){', body, '}'
]

{ #category : #tests }
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
