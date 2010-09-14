"
Implements dijit.Tree.model connecting to a store with a single root item. Any methods passed into the constructor will override the ones defined here.
"
Class {
	#name : #DijitTreeStoreModel,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitTreeStoreModel class >> functionName [

	^ 'dijit.tree.TreeStoreModel'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> childrenAttrs [
	"  One or more attribute names (attributes in the dojo.data item) that specify that item's children "

	self access: 'childrenAttrs'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> childrenAttrs: aJsObject [
	"  One or more attribute names (attributes in the dojo.data item) that specify that item's children "

	self propertyAt: 'childrenAttrs' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> connects [
	
	self access: 'connects'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> connects: aJsObject [
	
	self propertyAt: 'connects' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> deferItemLoadingUntilExpand [
	"  Setting this to true will cause the TreeStoreModel to defer calling loadItem on nodes until they are expanded.
	This allows for lazying loading where only one loadItem (and generally one network call, consequently) per expansion (rather than one for each child).
	This relies on partial loading of the children items; each children item of a fully loaded item should contain the label and info about having children. "

	self access: 'deferItemLoadingUntilExpand'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> deferItemLoadingUntilExpand: aBoolean [
	"  Setting this to true will cause the TreeStoreModel to defer calling loadItem on nodes until they are expanded.
	This allows for lazying loading where only one loadItem (and generally one network call, consequently) per expansion (rather than one for each child).
	This relies on partial loading of the children items; each children item of a fully loaded item should contain the label and info about having children. "

	self propertyAt: 'deferItemLoadingUntilExpand' put: aBoolean
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> destroy [
	
	self call: 'destroy'
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> fetchItemByIdentity: keywordArgs [ 
	
	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> getChildren: parentItem onComplete: onComplete onError: onError [ 
	"  Calls onComplete() with array of child items of given parent item, all loaded. "

	self call: 'getChildren' withArguments: (Array with: parentItem with: onComplete with: onError)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> getIdentity: item [ 
	
	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> getLabel: item [ 
	"  Get the label for an item "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> getRoot: onItem onError: onError [ 
	"  Calls onItem with the root item for the tree, possibly a fabricated item.
	Calls onError on error. "

	self call: 'getRoot' withArguments: (Array with: onItem with: onError)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> isItem: something [ 
	
	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> labelAttr [
	"  If specified, get label for tree node from this attribute, rather than by calling store.getLabel() "

	self access: 'labelAttr'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> labelAttr: aString [
	"  If specified, get label for tree node from this attribute, rather than by calling store.getLabel() "

	self propertyAt: 'labelAttr' put: aString
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> mayHaveChildren: item [ 
	"  Tells if an item has or may have children.
	Implementing logic here avoids showing +/- expando icon for nodes that we know don't have children.
	(For efficiency reasons we may not want to check if an element actually has children until user clicks the expando node) "

	self call: 'mayHaveChildren' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> newItem: args parent: parent insertIndex: insertIndex [ 
	"  Developers will need to override this method if new items get added to parents with multiple children attributes, in order to define which children attribute points to the new item "

	self call: 'newItem' withArguments: (Array with: args with: parent with: insertIndex)
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> newItemIdAttr [
	"  Name of attribute in the Object passed to newItem() that specifies the id.
	If newItemIdAttr is set then it's used when newItem() is called to see if an item with the same id already exists, and if so just links to the old item (so that the old item ends up with two parents).
	Setting this to null or '' will make every drop create a new item. "

	self access: 'newItemIdAttr'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> newItemIdAttr: aString [
	"  Name of attribute in the Object passed to newItem() that specifies the id.
	If newItemIdAttr is set then it's used when newItem() is called to see if an item with the same id already exists, and if so just links to the old item (so that the old item ends up with two parents).
	Setting this to null or '' will make every drop create a new item. "

	self propertyAt: 'newItemIdAttr' put: aString
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onChange: item [
	"  Callback whenever an item has changed, so that Tree can update the label, icon, etc.
	Note that changes to an item's children or parent(s) will trigger an onChildrenChange() so you can ignore those changes here. "

	self eventAt: 'onChange' put: (item asFunction: #(#item))
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onChildrenChange: anObject [
	"  Callback to do notifications about new, updated, or deleted items. "

	self eventAt: 'onChildrenChange' put: (anObject asFunction: #(#parent #newChildrenList))
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onDelete: anObject [
	"  Note that there will also be an onChildrenChange() callback for the parent of this item "

	self eventAt: 'onDelete' put: (anObject asFunction: #(#parent #newChildrenList))
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onDeleteItem: item [
	"  Handler for delete notifications from underlying store "

	self eventAt: 'onDeleteItem' put: (item asFunction: #(#item))
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onNewItem: anObject [
	"  If the new item is a child of an existing item, calls onChildrenChange() with the new list of children for that existing item "

	self eventAt: 'onNewItem' put: (anObject asFunction: #(#item #parentInfo))
]

{ #category : #'events-generated' }
DijitTreeStoreModel >> onSetItem: anObject [
	"  Handles updates to an item's children by calling onChildrenChange(), and other updates to an item by calling onChange().
	See onNewItem for more details on handling updates to an item's children "

	self eventAt: 'onSetItem' put: (anObject asFunction: #(#item #attribute #oldValue #newValue))
]

{ #category : #'functions-generated' }
DijitTreeStoreModel >> pasteItem: childItem oldParentItem: oldParentItem newParentItem: newParentItem bCopy: bCopy insertIndex: insertIndex [ 
	"  Move or copy an item from one parent item to another.
	Used in drag & drop "

	self call: 'pasteItem' withArguments: (OrderedCollection new add: childItem; add: oldParentItem; add: newParentItem; add: bCopy; add: insertIndex; yourself)
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> query [
	"  Specifies datastore query to return the root item for the tree.
	Must only return a single item.
	Alternately can just pass in pointer to root item. "

	self access: 'query'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> query: aJsObject [
	"  Specifies datastore query to return the root item for the tree.
	Must only return a single item.
	Alternately can just pass in pointer to root item. "

	self propertyAt: 'query' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> root [
	"  Pointer to the root item (read only, not a parameter) "

	self access: 'root'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> root: aJsObject [
	"  Pointer to the root item (read only, not a parameter) "

	self propertyAt: 'root' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> store [
	"  Underlying store "

	self access: 'store'
]

{ #category : #'properties-generated' }
DijitTreeStoreModel >> store: aJsObject [
	"  Underlying store "

	self propertyAt: 'store' put: aJsObject
]
