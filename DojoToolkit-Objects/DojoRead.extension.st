Extension { #name : #DojoRead }

{ #category : '*DojoToolkit-Objects' }
DojoRead >> close: request [ 
	"  The close() method is intended for instructing the store to 'close' out any information associated with a particular request.
	In general, this API expects to recieve as a parameter a request object returned from a fetch.
	It will then close out anything associated with that request, such as clearing any internal datastore caches and closing any 'open' connections.
	For some store implementations, this call may be a no-op "

	self call: 'close' withArguments: (Array with: request)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> containsValue: item attribute: attribute value: value [ 
	"  Returns true if the given *value* is one of the values that getValues() would return. "

	self call: 'containsValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> fetch: keywordArgs [ 
	"  A Request object will always be returned and is returned immediately.
	The basic request is nothing more than the keyword args passed to fetch and an additional function attached, abort().
	The returned request object may then be used to cancel a fetch.
	All data items returns are passed through the callbacks defined in the fetch parameters and are not present on the 'request' object.
	This does not mean that custom stores can not add methods and properties to the request object returned, only that the API does not require it.
	For more info about the Request API, see dojo.data.api.Request "

	self call: 'fetch' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead classSide >> functionName [

	^ 'dojo.data.api.Read'
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getAttributes: item [ 
	"  Returns an array with all the attributes that this item has.
	This method will always return an array; if the item has no attributes at all, getAttributes() will return an empty array: []. "

	self call: 'getAttributes' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getFeatures [
	"  The getFeatures() method returns an simple keyword values object that specifies what interface features the datastore implements.
	A simple CsvStore may be read-only, and the only feature it implements will be the 'dojo.data.api.Read' interface, so the getFeatures() method will return an object like this one: {'dojo.data.api.Read': true}.
	A more sophisticated datastore might implement a variety of interface features, like 'dojo.data.api.Read', 'dojo.data.api.Write', 'dojo.data.api.Identity', and 'dojo.data.api.Attribution'. "

	self call: 'getFeatures'
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getLabel: item [ 
	"  Method to inspect the item and return a user-readable 'label' for the item that provides a general/adequate description of what the item is.
	In general most labels will be a specific attribute value or collection of the attribute values that combine to label the item in some manner.
	For example for an item that represents a person it may return the label as: 'firstname lastlame' where the firstname and lastname are attributes on the item.
	If the store is unable to determine an adequate human readable label, it should return undefined.
	Users that wish to customize how a store instance labels items should replace the getLabel() function on their instance of the store, or extend the store and replace the function in the extension class "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getLabelAttributes: item [ 
	"  Method to inspect the item and return an array of what attributes of the item were used to generate its label, if any.
	This function is to assist UI developers in knowing what attributes can be ignored out of the attributes an item has when displaying it, in cases where the UI is using the label as an overall identifer should they wish to hide redundant information "

	self call: 'getLabelAttributes' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getValue: item attribute: attribute defaultValue: defaultValue [ 
	"  Saying that an 'item x does not have a value for an attribute y' is identical to saying that an 'item x does not have attribute y'.
	It is an oxymoron to say 'that attribute is present but has no values' or 'the item has that attribute but does not have any attribute values'.
	If store.hasAttribute(item, attribute) returns false, then store.getValue(item, attribute) will return undefined "

	self call: 'getValue' withArguments: (Array with: item with: attribute with: defaultValue)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> getValues: item attribute: attribute [ 
	"  This getValues() method works just like the getValue() method, but getValues() always returns an array rather than a single attribute value.
	The array may be empty, may contain a single attribute value, or may contain many attribute values.
	If the item does not have a value for the given attribute, then getValues() will return an empty array: [].
	(So, if store.hasAttribute(item, attribute) has a return of false, then store.getValues(item, attribute) will return [].) "

	self call: 'getValues' withArguments: (Array with: item with: attribute)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> hasAttribute: item attribute: attribute [ 
	"  Returns true if the given *item* has a value for the given *attribute*. "

	self call: 'hasAttribute' withArguments: (Array with: item with: attribute)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> isItem: something [ 
	"  Returns true if *something* is an item and came from the store instance.
	Returns false if *something* is a literal, an item from another store instance, or is any object other than an item. "

	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> isItemLoaded: something [ 
	"  Returns false if isItem(something) is false.
	Returns false if if isItem(something) is true but the the item is not yet loaded in local memory (for example, if the item has not yet been read from the server). "

	self call: 'isItemLoaded' withArguments: (Array with: something)
]

{ #category : '*DojoToolkit-Objects' }
DojoRead >> loadItem: keywordArgs [ 
	"  Given an item, this method loads the item so that a subsequent call to store.isItemLoaded(item) will return true.
	If a call to isItemLoaded() returns true before loadItem() is even called, then loadItem() need not do any work at all and will not even invoke the callback handlers.
	So, before invoking this method, check that the item has not already been loaded. "

	self call: 'loadItem' withArguments: (Array with: keywordArgs)
]
