Class {
	#name : #DojoQueryTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #accessing }
DojoQueryTest >> assert: query equalsQuery: queryString [

	self 
		assert: query
		equals: Dojo functionName , '.query(', queryString, ')'
]

{ #category : #accessing }
DojoQueryTest >> query [

	^ self dojo query
]

{ #category : #accessing }
DojoQueryTest >> query: anObject [
	^ self query with: anObject
]

{ #category : #testing }
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

{ #category : #testing }
DojoQueryTest >> testElementById [

	self 
		assert: (self dojo id: 'id42')
		equalsQuery: '"#id42"'.

	self 
		assert: (self dojo query: #id42)
		equalsQuery: '"#id42"'.
]

{ #category : #testing }
DojoQueryTest >> testElementByName [

	self 
		assert: (self dojo query: 'h3')
		equalsQuery: '"h3"'.
	self 
		assert: (self dojo query element: 'h2')
		equalsQuery: '"h2"'.
]
