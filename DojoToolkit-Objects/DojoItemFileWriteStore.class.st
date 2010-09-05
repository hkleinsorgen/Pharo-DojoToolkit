Class {
	#name : #DojoItemFileWriteStore,
	#superclass : #DojoItemFileReadStore,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore class >> functionName [

	^ 'dojo.data.ItemFileWriteStore'
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> deleteItem: item [ 
	"  See dojo.data.api.Write.deleteItem() "

	self call: 'deleteItem' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> isDirty: item [ 
	"  See dojo.data.api.Write.isDirty() "

	self call: 'isDirty' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> newItem: keywordArgs parentInfo: parentInfo [ 
	"  See dojo.data.api.Write.newItem() "

	self call: 'newItem' withArguments: (Array with: keywordArgs with: parentInfo)
]

{ #category : #'events-generated' }
DojoItemFileWriteStore >> onDelete: deletedItem [
	"  See dojo.data.api.Notification.onDelete() "

	self eventAt: 'onDelete' put: (deletedItem asFunction: #(#deletedItem))
]

{ #category : #'events-generated' }
DojoItemFileWriteStore >> onNew: anObject [
	"  See dojo.data.api.Notification.onNew() "

	self eventAt: 'onNew' put: (anObject asFunction: #(#newItem #parentInfo))
]

{ #category : #'events-generated' }
DojoItemFileWriteStore >> onSet: anObject [
	"  See dojo.data.api.Notification.onSet() "

	self eventAt: 'onSet' put: (anObject asFunction: #(#item #attribute #oldValue #newValue))
]

{ #category : #'properties-generated' }
DojoItemFileWriteStore >> referenceIntegrity [
	
	self access: 'referenceIntegrity'
]

{ #category : #'properties-generated' }
DojoItemFileWriteStore >> referenceIntegrity: aJsObject [
	
	self propertyAt: 'referenceIntegrity' put: aJsObject
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> revert [
	"  See dojo.data.api.Write.revert() "

	self call: 'revert'
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> save: keywordArgs [ 
	"  See dojo.data.api.Write.save() "

	self call: 'save' withArguments: (Array with: keywordArgs)
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> setValue: item attribute: attribute value: value [ 
	"  See dojo.data.api.Write.set() "

	self call: 'setValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> setValues: item attribute: attribute values: values [ 
	"  See dojo.data.api.Write.setValues() "

	self call: 'setValues' withArguments: (Array with: item with: attribute with: values)
]

{ #category : #'functions-generated' }
DojoItemFileWriteStore >> unsetAttribute: item attribute: attribute [ 
	"  See dojo.data.api.Write.unsetAttribute() "

	self call: 'unsetAttribute' withArguments: (Array with: item with: attribute)
]
