Class {
	#name : #DojoAjaxTest,
	#superclass : #AbstractDojoTest,
	#category : 'DojoToolkit-Tests'
}

{ #category : #tests }
DojoAjaxTest >> testGetTimeout [

	self 
		assert: (self dojo ajaxGet timeout: 1000)
		equals: 'dojo.xhrGet({', (self keyQuote: 'timeout'), ':1000})'.
]

{ #category : #tests }
DojoAjaxTest >> testLoad [

	self 
		assert: ((self dojo byId: 'test') ajax html: 'replacement')
		equals: 'dojo.xhrGet({', (self keyQuote: 'handleAs'), ':"text",', (self keyQuote: 'load'), ':function(response,io){dojo.byId("test").innerHTML(response);dojo.parser.parse("test");return response},', (self keyQuote: 'url'), ':"http://www.seaside.st/",', (self keyQuote: 'content'), ':{"_s":"1","_k":"a","1":"1"}})'.
]
