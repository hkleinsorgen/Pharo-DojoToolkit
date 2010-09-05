Class {
	#name : #DojoItemFileWriteStore,
	#superclass : #DojoItemFileReadStore,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore class >> functionName [

	^ 'dojo.data.ItemFileWriteStore'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> deleteItem: item [ 
	"  See dojo.data.api.Write.deleteItem() "

	self call: 'deleteItem' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> isDirty: item [ 
	"  See dojo.data.api.Write.isDirty() "

	self call: 'isDirty' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> newItem: keywordArgs parentInfo: parentInfo [ 
	"  See dojo.data.api.Write.newItem() "

	self call: 'newItem' withArguments: (Array with: keywordArgs with: parentInfo)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> onDelete: deletedItem [
	"  See dojo.data.api.Notification.onDelete() "

	self eventAt: 'onDelete' put: (deletedItem asFunction: #(#deletedItem))
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> onNew: anObject [
	"  See dojo.data.api.Notification.onNew() "

	self eventAt: 'onNew' put: (anObject asFunction: #(#newItem #parentInfo))
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> onSet: anObject [
	"  See dojo.data.api.Notification.onSet() "

	self eventAt: 'onSet' put: (anObject asFunction: #(#item #attribute #oldValue #newValue))
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> referenceIntegrity [
	
	self access: 'referenceIntegrity'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> referenceIntegrity: aJsObject [
	
	self propertyAt: 'referenceIntegrity' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> revert [
	"  See dojo.data.api.Write.revert() "

	self call: 'revert'
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> save: keywordArgs [ 
	"  See dojo.data.api.Write.save() "

	self call: 'save' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> setValue: item attribute: attribute value: value [ 
	"  See dojo.data.api.Write.set() "

	self call: 'setValue' withArguments: (Array with: item with: attribute with: value)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> setValues: item attribute: attribute values: values [ 
	"  See dojo.data.api.Write.setValues() "

	self call: 'setValues' withArguments: (Array with: item with: attribute with: values)
]

{ #category : '*DojoToolkit-Objects' }
DojoItemFileWriteStore >> unsetAttribute: item attribute: attribute [ 
	"  See dojo.data.api.Write.unsetAttribute() "

	self call: 'unsetAttribute' withArguments: (Array with: item with: attribute)
]
