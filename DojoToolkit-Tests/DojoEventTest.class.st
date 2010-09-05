Class {
	#name : #DojoEventTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : '*DojoToolkit-Tests' }
DojoEventTest >> testConnectById [

	self 
		assert: (self dojo connect: (self dojo byId: 'id42') event: 'tested' method: 'testFunction')
		equals: 'dojo.connect(dojo.byId("id42"),"tested","testFunction")'.

	self 
		assert: ((self dojo byId: 'id42') connectEvent: 'tested' method: 'testFunction')
		equals: 'dojo.connect(dojo.byId("id42"),"tested","testFunction")'.
]

{ #category : '*DojoToolkit-Tests' }
DojoEventTest >> testConnectQuery [

	self 
		assert: ((self dojo query: #id42) connectEvent: 'tested' method: 'testFunction')
		equals: 'dojo.query("#id42").connect("tested","testFunction")'.
]

{ #category : '*DojoToolkit-Tests' }
DojoEventTest >> testOnClick [

	self 
		assert: ((self dojo query: #id42) onClick: ('alert(e.text)' asFunction: #(e)))
		equals: 'dojo.query("#id42").onclick(function(e){alert(e.text)})'.
]
