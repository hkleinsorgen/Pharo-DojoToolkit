Extension { #name : #DojoIdentity }

{ #category : '*DojoToolkit-Objects' }
DojoIdentity >> fetchItemByIdentity: keywordArgs [ 
	"  Given the identity of an item, this method returns the item that has that identity through the onItem callback.
	Conforming implementations should return null if there is no item with the given identity.
	Implementations of fetchItemByIdentity() may sometimes return an item from a local cache and may sometimes fetch an item from a remote server, "

	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Objects' }
DojoIdentity classSide >> functionName [

	^ 'dojo.data.api.Identity'
]

{ #category : '*DojoToolkit-Objects' }
DojoIdentity >> getIdentity: item [ 
	"  Returns a unique identifier for an item.
	The return value will be either a string or something that has a toString() method (such as, for example, a dojox.uuid.Uuid object). "

	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoIdentity >> getIdentityAttributes: item [ 
	"  Returns an array of attribute names that are used to generate the identity.
	For most stores, this is a single attribute, but for some complex stores such as RDB backed stores that use compound (multi-attribute) identifiers it can be more than one.
	If the identity is not composed of attributes on the item, it will return null.
	This function is intended to identify the attributes that comprise the identity so that so that during a render of all attributes, the UI can hide the the identity information if it chooses. "

	self call: 'getIdentityAttributes' withArguments: (Array with: item)
]
