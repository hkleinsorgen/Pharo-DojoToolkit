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
DojoEventTest >> testEventTarget [

	self 
		assert: (self dojo event currentTarget enclosingWidget button label)
		equals: 'dijit.getEnclosingWidget(event.currentTarget).label'.
]

{ #category : #tests }
DojoEventTest >> testOnClick [

	self 
		assert: ((self dojo query: #id42) onClick: ('alert(e.text)' asFunction: #(e)))
		equals: 'dojo.query("#id42").onclick(function(e){alert(e.text)})'.
]

{ #category : #tests }
DojoEventTest >> testPreventDefault [

	self 
		assert: (self dojo event preventDefault)
		equals: 'event.preventDefault()'.
]

{ #category : #tests }
DojoEventTest >> testStopEvent [ 

	self 
		assert: (self dojo event stopEvent)
		equals: 'dojo.stopEvent(event)'.
]

{ #category : #tests }
DojoEventTest >> testStopPropagation [

	self 
		assert: (self dojo event stopPropagation)
		equals: 'event.stopPropagation()'.
]
