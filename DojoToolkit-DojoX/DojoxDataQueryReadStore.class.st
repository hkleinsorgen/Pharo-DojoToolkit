"
By default all the sorting is done serverside before the data is returned which is the proper place to be doing it for really large datasets.
"
Class {
	#name : #DojoxDataQueryReadStore,
	#superclass : #DojoStore,
	#category : 'DojoToolkit-DojoX'
}

{ #category : #'accessing-generated' }
DojoxDataQueryReadStore class >> functionName [

	^ 'dojox.data.QueryReadStore'
]

{ #category : #autocomplete }
DojoxDataQueryReadStore >> autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute [ 
	" the block receives a search pattern and should return autocomplete strings"

	self url: ( self renderContext urlForDojoAjaxCallback: [ self respondAutoCompleteData: autocompleteQueryBlock searchAttribute: searchAttribute ]).
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> close: request [ 
	"  || keywordArgs || null "

	self call: 'close' withArguments: (Array with: request)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> containsValue: item attribute: attribute value: value [ 
	
	self call: 'containsValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> doClientPaging [
	
	self access: 'doClientPaging'
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> doClientPaging: aJsObject [
	
	self propertyAt: 'doClientPaging' put: aJsObject
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> doClientSorting [
	
	self access: 'doClientSorting'
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> doClientSorting: aJsObject [
	
	self propertyAt: 'doClientSorting' put: aJsObject
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> fetch: request [ 
	"  See dojo.data.util.simpleFetch.fetch() this is just a copy and I adjusted only the paging, since it happens on the server if doClientPaging is false, thx to http://trac.dojotoolkit.org/ticket/4761 reporting this.
	Would be nice to be able to use simpleFetch() to reduce copied code, but i dont know how yet.
	Ideas please! "

	self call: 'fetch' withArguments: (Array with: request)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> fetchItemByIdentity: keywordArgs [ 
	"  See dojo.data.api.Identity.fetchItemByIdentity() "

	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getAttributes: item [ 
	
	self call: 'getAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getFeatures [
	
	self call: 'getFeatures'
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getIdentity: item [ 
	"  See dojo.data.api.Identity.getIdentity() "

	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getIdentityAttributes: item [ 
	"  See dojo.data.api.Identity.getIdentityAttributes() "

	self call: 'getIdentityAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getLabel: item [ 
	"  See dojo.data.api.Read.getLabel() "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getLabelAttributes: item [ 
	"  See dojo.data.api.Read.getLabelAttributes() "

	self call: 'getLabelAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getValue: item attribute: attribute defaultValue: defaultValue [ 
	
	self call: 'getValue' withArguments: (Array with: item with: attribute with: defaultValue)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> getValues: item attribute: attribute [ 
	
	self call: 'getValues' withArguments: (Array with: item with: attribute)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> hasAttribute: item attribute: attribute [ 
	"  See dojo.data.api.Read.hasAttribute() "

	self call: 'hasAttribute' withArguments: (Array with: item with: attribute)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> isItem: something [ 
	
	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> isItemLoaded: something [ 
	
	self call: 'isItemLoaded' withArguments: (Array with: something)
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> lastRequestHash [
	
	self access: 'lastRequestHash'
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> lastRequestHash: aString [
	
	self propertyAt: 'lastRequestHash' put: aString
]

{ #category : #'functions-generated' }
DojoxDataQueryReadStore >> loadItem: args [ 
	
	self call: 'loadItem' withArguments: (Array with: args)
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> requestMethod [
	
	self access: 'requestMethod'
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> requestMethod: aString [
	
	self propertyAt: 'requestMethod' put: aString
]

{ #category : #private }
DojoxDataQueryReadStore >> respondAutoCompleteData: autocompleteQueryBlock searchAttribute: searchAttribute [ 

	| queryFields searchPattern strings |
	queryFields := self requestContext request queryFields.
	searchPattern := queryFields at: searchAttribute ifAbsent: [ '' ].
	searchPattern := String streamContents: 
			[: writeStream | | readStream |
				readStream := searchPattern readStream.
				[ readStream atEnd ] whileFalse: 
					[ | char |
						char := readStream next.
						char = $\ 
							ifTrue: [ char := readStream next ].
						writeStream nextPut: char
					]
			].
	strings := autocompleteQueryBlock value: searchPattern.
	^ self respondAutoCompleteStrings: strings searchAttribute: searchAttribute
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> url [
	
	self access: 'url'
]

{ #category : #'properties-generated' }
DojoxDataQueryReadStore >> url: aString [
	
	self propertyAt: 'url' put: aString
]

{ #category : #'properties-convenience' }
DojoxDataQueryReadStore >> useGet [

	self requestMethod: 'GET'
]

{ #category : #'properties-convenience' }
DojoxDataQueryReadStore >> usePost [

	self requestMethod: 'POST'
]
