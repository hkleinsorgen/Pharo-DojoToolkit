Extension { #name : #DojoAjaxTest }

{ #category : '*DojoToolkit-Tests' }
DojoAjaxTest >> testGetTimeout [

	self 
		assert: (self dojo ajaxGet timeout: 1000)
		equals: 'dojo.xhrGet({', (self keyQuote: 'timeout'), ':1000})'.
]

{ #category : '*DojoToolkit-Tests' }
DojoAjaxTest >> testLoad [

	self 
		assert: ((self dojo byId: 'test') ajax html: 'replacement')
		equals: 'dojo.xhrGet({', (self keyQuote: 'handleAs'), ':"text",', (self keyQuote: 'load'), ':function(response,io){dojo.byId("test").innerHTML(response);return response},', (self keyQuote: 'url'), ':"http://www.seaside.st/",', (self keyQuote: 'content'), ':{"_s":"1","_k":"a","1":"1"}})'.
]
