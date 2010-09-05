"
This API defines a set of APIs that all datastores that conform to the Notifications API must implement. In general, most stores will implement these APIs as no-op functions for users who wish to monitor them to be able to connect to then via dojo.connect(). For non-users of dojo.connect, they should be able to just replace the function on the store to obtain notifications. Both read-only and read-write stores may implement this feature. In the case of a read-only store, this feature makes sense if the store itself does internal polling to a back-end server and periodically updates its cache of items (deletes, adds, and updates).
"
Class {
	#name : #DojoNotification,
	#superclass : #DojoRead,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoNotification class >> functionName [

	^ 'dojo.data.api.Notification'
]

{ #category : #'events-generated' }
DojoNotification >> onDelete: deletedItem [
	"  This function is called any time an item is deleted from the store.
	It is called immediately after the store deleteItem processing has completed "

	self eventAt: 'onDelete' put: (deletedItem asFunction: #(#deletedItem))
]

{ #category : #'events-generated' }
DojoNotification >> onNew: anObject [
	"  This function is called any time a new item is created in the store.
	It is called immediately after the store newItem processing has completed "

	self eventAt: 'onNew' put: (anObject asFunction: #(#newItem #parentInfo))
]

{ #category : #'events-generated' }
DojoNotification >> onSet: anObject [
	"  This function is called any time an item is modified via setValue, setValues, unsetAttribute, etc.
	Its purpose is to provide a hook point for those who wish to monitor actions on items in the store in a simple manner.
	The general expected usage is to dojo.connect() to the store's implementation and be called after the store function is called "

	self eventAt: 'onSet' put: (anObject asFunction: #(#item #attribute #oldValue #newValue))
]
