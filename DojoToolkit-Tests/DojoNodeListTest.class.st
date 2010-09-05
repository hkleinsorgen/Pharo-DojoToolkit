Class {
	#name : #DojoNodeListTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : '*DojoToolkit-Tests' }
DojoNodeListTest >> testNewNodeList [

	self 
		assert: (self dojo nodeList: (Array with: (self dojo byId: 'foo')))
		equals: 'new dojo.NodeList(dojo.byId("foo"))'
]

{ #category : '*DojoToolkit-Tests' }
DojoNodeListTest >> testQueryAt [

	self 
		assert: ((self dojo query: 'h2') nodeAt: 0)
		equals: Dojo functionName , '.query("h2").at(0)'
]

{ #category : '*DojoToolkit-Tests' }
DojoNodeListTest >> testQueryFirst [

	self 
		assert: ((self dojo query: 'h2') first)
		equals: Dojo functionName , '.query("h2").first()'
]

{ #category : '*DojoToolkit-Tests' }
DojoNodeListTest >> testQueryLast [

	self 
		assert: ((self dojo query: 'h2') last)
		equals: Dojo functionName , '.query("h2").last()'
]

{ #category : '*DojoToolkit-Tests' }
DojoNodeListTest >> testQueryLength [

	self 
		assert: ((self dojo query: 'a') length)
		equals: Dojo functionName , '.query("a").length'
]
