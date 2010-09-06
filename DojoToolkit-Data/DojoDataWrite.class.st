"
This is an abstract API that data provider implementations conform to. This file defines function signatures and intentionally leaves all the functionss unimplemented.
"
Class {
	#name : #DojoDataWrite,
	#superclass : #DojoDataRead,
	#category : 'DojoToolkit-Data'
}

{ #category : '*DojoToolkit-Data' }
DojoDataWrite class >> functionName [

	^ 'dojo.data.api.Write'
]

{ #category : #'functions-generated' }
DojoDataWrite >> deleteItem: item [ 
	"  Deletes an item from the store. "

	self call: 'deleteItem' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoDataWrite >> isDirty: item [ 
	"  Given an item, isDirty() returns true if the item has been modified since the last save().
	If isDirty() is called with no *item* argument, then this function returns true if any item has been modified since the last save(). "

	self call: 'isDirty' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoDataWrite >> newItem: keywordArgs parentInfo: parentInfo [ 
	"  Returns a newly created item.
	Sets the attributes of the new item based on the *keywordArgs* provided.
	In general, the attribute names in the keywords become the attributes in the new item and as for the attribute values in keywordArgs, they become the values of the attributes in the new item.
	In addition, for stores that support hierarchical item creation, an optional second parameter is accepted that defines what item is the parent of the new item and what attribute of that item should the new item be assigned to.
	In general, this will assume that the attribute targetted is multi-valued and a new item is appended onto the list of values for that attribute. "

	self call: 'newItem' withArguments: (Array with: keywordArgs with: parentInfo)
]

{ #category : #'functions-generated' }
DojoDataWrite >> revert [
	"  Discards any unsaved changes "

	self call: 'revert'
]

{ #category : #'functions-generated' }
DojoDataWrite >> save: keywordArgs [ 
	"  Saves to the server all the changes that have been made locally.
	The save operation may take some time and is generally performed in an asynchronous fashion.
	The outcome of the save action is is passed into the set of supported callbacks for the save. "

	self call: 'save' withArguments: (Array with: keywordArgs)
]

{ #category : #'functions-generated' }
DojoDataWrite >> setValue: item attribute: attribute value: value [ 
	"  Sets the value of an attribute on an item.
	Replaces any previous value or values. "

	self call: 'setValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : #'functions-generated' }
DojoDataWrite >> setValues: item attribute: attribute values: values [ 
	"  Adds each value in the *values* array as a value of the given attribute on the given item.
	Replaces any previous value or values.
	Calling store.setValues(x, y, []) (with *values* as an empty array) has the same effect as calling store.unsetAttribute(x, y). "

	self call: 'setValues' withArguments: (Array with: item with: attribute with: values)
]

{ #category : #'functions-generated' }
DojoDataWrite >> unsetAttribute: item attribute: attribute [ 
	"  Deletes all the values of an attribute on an item. "

	self call: 'unsetAttribute' withArguments: (Array with: item with: attribute)
]
