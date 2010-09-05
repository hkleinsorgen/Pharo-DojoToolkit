"
The ItemFileReadStore implements the dojo.data.api.Read API and reads data from JSON files that have contents in this format -- { items: [ { name:'Kermit', color:'green', age:12, friends:['Gonzo', {_reference:{name:'Fozzie Bear'}}]}, { name:'Fozzie Bear', wears:['hat', 'tie']}, { name:'Miss Piggy', pets:'Foo-Foo'} ]} Note that it can also contain an 'identifer' property that specified which attribute on the items in the array of items that acts as the unique identifier for that item. use '' rather than undefined for the benefit of the parser (#3539)
"
Class {
	#name : #DojoItemFileReadStore,
	#superclass : #DojoSimpleFetch,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore class >> functionName [

	^ 'dojo.data.ItemFileReadStore'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> clearOnClose [
	
	self access: 'clearOnClose'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> clearOnClose: aJsObject [
	
	self propertyAt: 'clearOnClose' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> close: request [ 
	"  See dojo.data.api.Read.close() "

	self call: 'close' withArguments: (Array with: request)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> containsValue: item attribute: attribute value: value [ 
	"  See dojo.data.api.Read.containsValue() "

	self call: 'containsValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> data [
	
	self access: 'data'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> data: aJsObject [
	
	self propertyAt: 'data' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> failOk [
	
	self access: 'failOk'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> failOk: aJsObject [
	
	self propertyAt: 'failOk' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> fetchItemByIdentity: keywordArgs [ 
	"  See dojo.data.api.Identity.fetchItemByIdentity() "

	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getAttributes: item [ 
	"  See dojo.data.api.Read.getAttributes() "

	self call: 'getAttributes' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getFeatures [
	"  See dojo.data.api.Read.getFeatures() "

	self call: 'getFeatures'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getIdentity: item [ 
	"  See dojo.data.api.Identity.getIdentity() "

	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getIdentityAttributes: item [ 
	"  See dojo.data.api.Identity.getIdentifierAttributes() "

	self call: 'getIdentityAttributes' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getLabel: item [ 
	"  See dojo.data.api.Read.getLabel() "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getLabelAttributes: item [ 
	"  See dojo.data.api.Read.getLabelAttributes() "

	self call: 'getLabelAttributes' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getValue: item attribute: attribute defaultValue: defaultValue [ 
	"  See dojo.data.api.Read.getValue() "

	self call: 'getValue' withArguments: (Array with: item with: attribute with: defaultValue)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> getValues: item attribute: attribute [ 
	"  See dojo.data.api.Read.getValues() "

	self call: 'getValues' withArguments: (Array with: item with: attribute)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> hasAttribute: item attribute: attribute [ 
	"  See dojo.data.api.Read.hasAttribute() "

	self call: 'hasAttribute' withArguments: (Array with: item with: attribute)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> hierarchical [
	
	self access: 'hierarchical'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> hierarchical: aJsObject [
	
	self propertyAt: 'hierarchical' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> isItem: something [ 
	"  See dojo.data.api.Read.isItem() "

	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> isItemLoaded: something [ 
	"  See dojo.data.api.Read.isItemLoaded() "

	self call: 'isItemLoaded' withArguments: (Array with: something)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> loadItem: keywordArgs [ 
	"  See dojo.data.api.Read.loadItem() "

	self call: 'loadItem' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> typeMap [
	
	self access: 'typeMap'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> typeMap: aJsObject [
	
	self propertyAt: 'typeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> url [
	
	self access: 'url'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> url: aString [
	
	self propertyAt: 'url' put: aString
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> urlPreventCache [
	
	self access: 'urlPreventCache'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileReadStore >> urlPreventCache: aJsObject [
	
	self propertyAt: 'urlPreventCache' put: aJsObject
]
