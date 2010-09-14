Class {
	#name : #DojoAjaxTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #tests }
DojoAjaxTest >> testConfigurableDelete [

	self 
		assert: (self dojo ajax delete )
		equals: 'dojo.xhr("DELETE",{})'.
]

{ #category : #tests }
DojoAjaxTest >> testConfigurableGet [

	self 
		assert: (self dojo ajax get )
		equals: 'dojo.xhr("GET",{})'.
]

{ #category : #tests }
DojoAjaxTest >> testConfigurablePost [

	self 
		assert: (self dojo ajax post )
		equals: 'dojo.xhr("POST",{})'.
]

{ #category : #tests }
DojoAjaxTest >> testConfigurablePut [

	self 
		assert: (self dojo ajax put )
		equals: 'dojo.xhr("PUT",{})'.
]

{ #category : #tests }
DojoAjaxTest >> testDelete [

	self 
		assert: (self dojo ajaxDelete )
		equals: 'dojo.xhrDelete({})'.
]

{ #category : #tests }
DojoAjaxTest >> testGet [

	self 
		assert: (self dojo ajaxGet )
		equals: 'dojo.xhrGet({})'.
]

{ #category : #tests }
DojoAjaxTest >> testGetTimeout [

	self 
		assert: (self dojo ajaxGet timeout: 1000)
		equals: 'dojo.xhrGet({', (self keyQuote: 'timeout'), ':1000})'.
]

{ #category : #tests }
DojoAjaxTest >> testPost [

	self 
		assert: (self dojo ajaxPost )
		equals: 'dojo.xhrPost({})'.
]

{ #category : #tests }
DojoAjaxTest >> testPut [

	self 
		assert: (self dojo ajaxPut)
		equals: 'dojo.xhrPut({})'.
]
