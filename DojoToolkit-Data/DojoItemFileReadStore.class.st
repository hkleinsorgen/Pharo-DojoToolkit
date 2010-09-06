"
The ItemFileReadStore implements the dojo.data.api.Read API and reads data from JSON files that have contents in this format -- { items: [ { name:'Kermit', color:'green', age:12, friends:['Gonzo', {_reference:{name:'Fozzie Bear'}}]}, { name:'Fozzie Bear', wears:['hat', 'tie']}, { name:'Miss Piggy', pets:'Foo-Foo'} ]} Note that it can also contain an 'identifer' property that specified which attribute on the items in the array of items that acts as the unique identifier for that item. use '' rather than undefined for the benefit of the parser (#3539)
"
Class {
	#name : #DojoItemFileReadStore,
	#superclass : #DojoSimpleFetch,
	#category : 'DojoToolkit-Data'
}

{ #category : '*DojoToolkit-Data' }
DojoItemFileReadStore class >> functionName [

	^ 'dojo.data.ItemFileReadStore'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> clearOnClose [
	
	self access: 'clearOnClose'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> clearOnClose: aJsObject [
	
	self propertyAt: 'clearOnClose' put: aJsObject
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> close: request [ 
	"  See dojo.data.api.Read.close() "

	self call: 'close' withArguments: (Array with: request)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> containsValue: item attribute: attribute value: value [ 
	"  See dojo.data.api.Read.containsValue() "

	self call: 'containsValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> data [
	
	self access: 'data'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> data: aJsObject [
	
	self propertyAt: 'data' put: aJsObject
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> failOk [
	
	self access: 'failOk'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> failOk: aJsObject [
	
	self propertyAt: 'failOk' put: aJsObject
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> fetchItemByIdentity: keywordArgs [ 
	"  See dojo.data.api.Identity.fetchItemByIdentity() "

	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getAttributes: item [ 
	"  See dojo.data.api.Read.getAttributes() "

	self call: 'getAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getFeatures [
	"  See dojo.data.api.Read.getFeatures() "

	self call: 'getFeatures'
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getIdentity: item [ 
	"  See dojo.data.api.Identity.getIdentity() "

	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getIdentityAttributes: item [ 
	"  See dojo.data.api.Identity.getIdentifierAttributes() "

	self call: 'getIdentityAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getLabel: item [ 
	"  See dojo.data.api.Read.getLabel() "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getLabelAttributes: item [ 
	"  See dojo.data.api.Read.getLabelAttributes() "

	self call: 'getLabelAttributes' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getValue: item attribute: attribute defaultValue: defaultValue [ 
	"  See dojo.data.api.Read.getValue() "

	self call: 'getValue' withArguments: (Array with: item with: attribute with: defaultValue)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> getValues: item attribute: attribute [ 
	"  See dojo.data.api.Read.getValues() "

	self call: 'getValues' withArguments: (Array with: item with: attribute)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> hasAttribute: item attribute: attribute [ 
	"  See dojo.data.api.Read.hasAttribute() "

	self call: 'hasAttribute' withArguments: (Array with: item with: attribute)
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> hierarchical [
	
	self access: 'hierarchical'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> hierarchical: aJsObject [
	
	self propertyAt: 'hierarchical' put: aJsObject
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> isItem: something [ 
	"  See dojo.data.api.Read.isItem() "

	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> isItemLoaded: something [ 
	"  See dojo.data.api.Read.isItemLoaded() "

	self call: 'isItemLoaded' withArguments: (Array with: something)
]

{ #category : #'functions-generated' }
DojoItemFileReadStore >> loadItem: keywordArgs [ 
	"  See dojo.data.api.Read.loadItem() "

	self call: 'loadItem' withArguments: (Array with: keywordArgs)
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> typeMap [
	
	self access: 'typeMap'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> typeMap: aJsObject [
	
	self propertyAt: 'typeMap' put: aJsObject
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> url [
	
	self access: 'url'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> url: aString [
	
	self propertyAt: 'url' put: aString
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> urlPreventCache [
	
	self access: 'urlPreventCache'
]

{ #category : #'properties-generated' }
DojoItemFileReadStore >> urlPreventCache: aJsObject [
	
	self propertyAt: 'urlPreventCache' put: aJsObject
]
