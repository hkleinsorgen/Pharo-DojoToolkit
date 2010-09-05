Extension { #name : #DojoQueryTest }

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> assert: query equalsQuery: queryString [

	self 
		assert: query
		equals: Dojo functionName , '.query(', queryString, ')'
]

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> query [

	^ self dojo query
]

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> query: anObject [
	^ self query with: anObject
]

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> testElementByAttribute [

	self 
		assert: (self dojo query element: 'a' attribute: 'href')
		equalsQuery: '"a[href]"'.
	self 
		assert: (self dojo query element: 'a' attribute: 'href' value: 'http://www.seaside.st')
		equalsQuery: '"a[href=\"http://www.seaside.st\"]"'.
	self 
		assert: (self dojo query element: 'a' attribute: 'href' beginsWith: 'http')
		equalsQuery: '"a[href^=\"http\"]"'.
	self 
		assert: (self dojo query element: 'a' attribute: 'href' endsWith: 'st')
		equalsQuery: '"a[href$=\"st\"]"'.
	self 
		assert: (self dojo query element: 'a' attribute: 'href' contains: 'seaside')
		equalsQuery: '"a[href*=\"seaside\"]"'.
]

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> testElementById [

	self 
		assert: (self dojo id: 'id42')
		equalsQuery: '"#id42"'.

	self 
		assert: (self dojo query: #id42)
		equalsQuery: '"#id42"'.
]

{ #category : '*DojoToolkit-Tests' }
DojoQueryTest >> testElementByName [

	self 
		assert: (self dojo query: 'h3')
		equalsQuery: '"h3"'.
	self 
		assert: (self dojo query element: 'h2')
		equalsQuery: '"h2"'.
]
