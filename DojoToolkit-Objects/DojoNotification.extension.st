Extension { #name : #DojoNotification }

{ #category : '*DojoToolkit-Objects' }
DojoNotification classSide >> functionName [

	^ 'dojo.data.api.Notification'
]

{ #category : '*DojoToolkit-Objects' }
DojoNotification >> onDelete: deletedItem [
	"  This function is called any time an item is deleted from the store.
	It is called immediately after the store deleteItem processing has completed "

	self eventAt: 'onDelete' put: (deletedItem asFunction: #(#deletedItem))
]

{ #category : '*DojoToolkit-Objects' }
DojoNotification >> onNew: anObject [
	"  This function is called any time a new item is created in the store.
	It is called immediately after the store newItem processing has completed "

	self eventAt: 'onNew' put: (anObject asFunction: #(#newItem #parentInfo))
]

{ #category : '*DojoToolkit-Objects' }
DojoNotification >> onSet: anObject [
	"  This function is called any time an item is modified via setValue, setValues, unsetAttribute, etc.
	Its purpose is to provide a hook point for those who wish to monitor actions on items in the store in a simple manner.
	The general expected usage is to dojo.connect() to the store's implementation and be called after the store function is called "

	self eventAt: 'onSet' put: (anObject asFunction: #(#item #attribute #oldValue #newValue))
]
