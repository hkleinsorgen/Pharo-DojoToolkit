Extension { #name : #DijitForestStoreModel }

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel classSide >> functionName [

	^ 'dijit.tree.ForestStoreModel'
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> getChildren: parentItem callback: callback onError: onError [ 
	"  Calls onComplete() with array of child items of given parent item, all loaded. "

	self call: 'getChildren' withArguments: (Array with: parentItem with: callback with: onError)
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> onAddToRoot: item [
	"  Called when item added to root of tree; user must override this method to modify the item so that it matches the query for top level items "

	self eventAt: 'onAddToRoot' put: (item asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> onDeleteItem: item [
	"  Handler for delete notifications from underlying store "

	self eventAt: 'onDeleteItem' put: (item asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> onLeaveRoot: item [
	"  Called when item removed from root of tree; user must override this method to modify the item so it doesn't match the query for top level items "

	self eventAt: 'onLeaveRoot' put: (item asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> onNewItem: anObject [
	"  If the new item is a child of an existing item, calls onChildrenChange() with the new list of children for that existing item "

	self eventAt: 'onNewItem' put: (anObject asFunction: #(#item #parentInfo))
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> onNewRootItem: args [
	"  User can override this method to modify a new element that's being added to the root of the tree, for example to add a flag like root=true "

	self eventAt: 'onNewRootItem' put: (args asFunction: #(#args))
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> rootId [
	"  ID of fabricated root item "

	self access: 'rootId'
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> rootId: aString [
	"  ID of fabricated root item "

	self propertyAt: 'rootId' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> rootLabel [
	"  Label of fabricated root item "

	self access: 'rootLabel'
]

{ #category : '*DojoToolkit-Widgets' }
DijitForestStoreModel >> rootLabel: aString [
	"  Label of fabricated root item "

	self propertyAt: 'rootLabel' put: aString
]
