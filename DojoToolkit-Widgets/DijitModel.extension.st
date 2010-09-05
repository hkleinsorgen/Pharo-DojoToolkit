Extension { #name : #DijitModel }

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> destroy [
	"  Destroys this object, releasing connections to the store "

	self call: 'destroy'
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> fetchItemByIdentity: keywordArgs [ 
	"  Given the identity of an item, this method returns the item that has that identity through the onItem callback.
	Conforming implementations should return null if there is no item with the given identity.
	Implementations of fetchItemByIdentity() may sometimes return an item from a local cache and may sometimes fetch an item from a remote server. "

	self call: 'fetchItemByIdentity' withArguments: (Array with: keywordArgs)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel classSide >> functionName [

	^ 'dijit.tree.model'
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> getChildren: parentItem onComplete: onComplete [ 
	"  Calls onComplete() with array of child items of given parent item, all loaded.
	Throws exception on error. "

	self call: 'getChildren' withArguments: (Array with: parentItem with: onComplete)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> getIdentity: item [ 
	"  Returns identity for an item "

	self call: 'getIdentity' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> getLabel: item [ 
	"  Get the label for an item "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> getRoot: onItem [ 
	"  Calls onItem with the root item for the tree, possibly a fabricated item.
	Throws exception on error. "

	self call: 'getRoot' withArguments: (Array with: onItem)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> isItem: something [ 
	"  Returns true if *something* is an item and came from this model instance.
	Returns false if *something* is a literal, an item from another model instance, or is any object other than an item. "

	self call: 'isItem' withArguments: (Array with: something)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> mayHaveChildren: item [ 
	"  Tells if an item has or may have children.
	Implementing logic here avoids showing +/- expando icon for nodes that we know don't have children.
	(For efficiency reasons we may not want to check if an element actually has children until user clicks the expando node) "

	self call: 'mayHaveChildren' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> newItem: args parent: parent insertIndex: insertIndex [ 
	"  Creates a new item.
	See dojo.data.api.Write for details on args. "

	self call: 'newItem' withArguments: (Array with: args with: parent with: insertIndex)
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> onChange: item [
	"  Callback whenever an item has changed, so that Tree can update the label, icon, etc.
	Note that changes to an item's children or parent(s) will trigger an onChildrenChange() so you can ignore those changes here. "

	self eventAt: 'onChange' put: (item asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> onChildrenChange: anObject [
	"  Callback to do notifications about new, updated, or deleted items. "

	self eventAt: 'onChildrenChange' put: (anObject asFunction: #(#parent #newChildrenList))
]

{ #category : '*DojoToolkit-Widgets' }
DijitModel >> pasteItem: childItem oldParentItem: oldParentItem newParentItem: newParentItem bCopy: bCopy [ 
	"  Move or copy an item from one parent item to another.
	Used in drag & drop.
	If oldParentItem is specified and bCopy is false, childItem is removed from oldParentItem.
	If newParentItem is specified, childItem is attached to newParentItem. "

	self call: 'pasteItem' withArguments: (OrderedCollection new add: childItem; add: oldParentItem; add: newParentItem; add: bCopy; yourself)
]
