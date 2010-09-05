Class {
	#name : #DojoEventTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #tests }
DojoEventTest >> testConnectById [

	self 
		assert: (self dojo connect: (self dojo byId: 'id42') event: 'tested' method: 'testFunction')
		equals: 'dojo.connect(dojo.byId("id42"),"tested","testFunction")'.

	self 
		assert: ((self dojo byId: 'id42') connectEvent: 'tested' method: 'testFunction')
		equals: 'dojo.connect(dojo.byId("id42"),"tested","testFunction")'.
]

{ #category : #tests }
DojoEventTest >> testConnectQuery [

	self 
		assert: ((self dojo query: #id42) connectEvent: 'tested' method: 'testFunction')
		equals: 'dojo.query("#id42").connect("tested","testFunction")'.
]

{ #category : #tests }
DojoEventTest >> testOnClick [

	self 
		assert: ((self dojo query: #id42) onClick: ('alert(e.text)' asFunction: #(e)))
		equals: 'dojo.query("#id42").onclick(function(e){alert(e.text)})'.
]
