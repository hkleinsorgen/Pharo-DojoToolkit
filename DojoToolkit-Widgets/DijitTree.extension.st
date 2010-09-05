Extension { #name : #DijitTree }

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> autoExpand [
	"  Fully expand the tree on load.
	Overrides persist "

	self access: 'autoExpand'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> autoExpand: aBoolean [
	"  Fully expand the tree on load.
	Overrides persist "

	self propertyAt: 'autoExpand' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> betweenThreshold [
	"  Set to a positive value to allow drag and drop 'between' nodes.
	If during DnD mouse is over a (target) node but less than betweenThreshold pixels from the bottom edge, dropping the the dragged node will make it the next sibling of the target node, rather than the child.
	Similarly, if mouse is over a target node but less that betweenThreshold pixels from the top edge, dropping the dragged node will make it the target node's previous sibling rather than the target node's child. "

	self access: 'betweenThreshold'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> betweenThreshold: aNumber [
	"  Set to a positive value to allow drag and drop 'between' nodes.
	If during DnD mouse is over a (target) node but less than betweenThreshold pixels from the bottom edge, dropping the the dragged node will make it the next sibling of the target node, rather than the child.
	Similarly, if mouse is over a target node but less that betweenThreshold pixels from the top edge, dropping the dragged node will make it the target node's previous sibling rather than the target node's child. "

	self propertyAt: 'betweenThreshold' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> checkAcceptance: source nodes: nodes [ 
	"  Checks if the Tree itself can accept nodes from this source "

	self call: 'checkAcceptance' withArguments: (Array with: source with: nodes)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> checkItemAcceptance: target source: source position: position [ 
	"  In the base case, this is called to check if target can become a child of source.
	When betweenThreshold is set, position='before' or 'after' means that we are asking if the source node can be dropped before/after the target node "

	self call: 'checkItemAcceptance' withArguments: (Array with: target with: source with: position)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> childrenAttr [
	"  Deprecated.
	This information should be specified in the model.
	One ore more attributes that holds children of a tree node "

	self access: 'childrenAttr'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> childrenAttr: aJsObject [
	"  Deprecated.
	This information should be specified in the model.
	One ore more attributes that holds children of a tree node "

	self propertyAt: 'childrenAttr' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> cookieName [
	
	self access: 'cookieName'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> cookieName: aString [
	
	self propertyAt: 'cookieName' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dndController [
	"  Class name to use as as the dnd controller.
	Specifying this class enables DnD.
	Generally you should specify this as 'dijit.tree.dndSource'. "

	self access: 'dndController'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dndController: aString [
	"  Class name to use as as the dnd controller.
	Specifying this class enables DnD.
	Generally you should specify this as 'dijit.tree.dndSource'. "

	self propertyAt: 'dndController' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dndParams [
	
	self access: 'dndParams'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dndParams: anArray [
	
	self propertyAt: 'dndParams' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dragThreshold [
	"  Number of pixels mouse moves before it's considered the start of a drag operation "

	self access: 'dragThreshold'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> dragThreshold: aNumber [
	"  Number of pixels mouse moves before it's considered the start of a drag operation "

	self propertyAt: 'dragThreshold' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> enableDragAndDrop [

	self require: 'dijit.tree.dndSource'.
	self dndController: 'dijit.tree.dndSource'.
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> focusNode: node [ 
	"  Focus on the specified node (which must be visible) "

	self call: 'focusNode' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree classSide >> functionName [

	^ 'dijit.Tree'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getIconClass: item opened: opened [ 
	"  Overridable function to return CSS class name to display icon "

	self call: 'getIconClass' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getIconStyle: item opened: opened [ 
	"  Overridable function to return CSS styles to display icon "

	self call: 'getIconStyle' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getItemChildren: parentItem onComplete: onComplete [ 
	"  Deprecated.
	This should be specified on the model itself.
	Overridable function that return array of child items of given parent item, or if parentItem==null then return top items in tree "

	self call: 'getItemChildren' withArguments: (Array with: parentItem with: onComplete)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getLabel: item [ 
	"  Overridable function to get the label for a tree node (given the item) "

	self call: 'getLabel' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getLabelClass: item opened: opened [ 
	"  Overridable function to return CSS class name to display label "

	self call: 'getLabelClass' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getLabelStyle: item opened: opened [ 
	"  Overridable function to return CSS styles to display label "

	self call: 'getLabelStyle' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getNodesByItem: item [ 
	"  Returns all tree nodes that refer to an item "

	self call: 'getNodesByItem' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getRowClass: item opened: opened [ 
	"  Overridable function to return CSS class name to display row "

	self call: 'getRowClass' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getRowStyle: item opened: opened [ 
	"  Overridable function to return CSS styles to display row "

	self call: 'getRowStyle' withArguments: (Array with: item with: opened)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> getTooltip: item [ 
	"  Overridable function to get the tooltip for a tree node (given the item) "

	self call: 'getTooltip' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> itemCreator: nodes target: target source: source [ 
	"  For each node in nodes[], which came from source, create a hash of name/value pairs to be passed to Tree.model.newItem().
	Returns array of those hashes "

	self call: 'itemCreator' withArguments: (Array with: nodes with: target with: source)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> lastFocused [
	
	self access: 'lastFocused'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> lastFocused: aJsObject [
	
	self propertyAt: 'lastFocused' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> mayHaveChildren: item [ 
	"  Deprecated.
	This should be specified on the model itself.
	Overridable function to tell if an item has or may have children.
	Controls whether or not +/- expando icon is shown.
	(For efficiency reasons we may not want to check if an element actually has children until user clicks the expando node) "

	self call: 'mayHaveChildren' withArguments: (Array with: item)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> model [
	"  Interface to read tree data, get notifications of changes to tree data, and for handling drop operations (i.e drag and drop onto the tree) "

	self access: 'model'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> model: aJsObject [
	"  Interface to read tree data, get notifications of changes to tree data, and for handling drop operations (i.e drag and drop onto the tree) "

	self propertyAt: 'model' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> multiCharSearchDuration [
	"  If multiple characters are typed where each keystroke happens within multiCharSearchDuration of the previous keystroke, search for nodes matching all the keystrokes.
	For example, typing 'ab' will search for entries starting with 'ab' unless the delay between 'a' and 'b' is greater than multiCharSearchDuration. "

	self access: 'multiCharSearchDuration'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> multiCharSearchDuration: aNumber [
	"  If multiple characters are typed where each keystroke happens within multiCharSearchDuration of the previous keystroke, search for nodes matching all the keystrokes.
	For example, typing 'ab' will search for entries starting with 'ab' unless the delay between 'a' and 'b' is greater than multiCharSearchDuration. "

	self propertyAt: 'multiCharSearchDuration' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onClick: anObject [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (anObject asFunction: #(#item #node #event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #(#item #node))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onDblClick: anObject [
	"  Connect to this function to receive notifications of mouse double click events. "

	self eventAt: 'onDblClick' put: (anObject asFunction: #(#item #node #event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onDndCancel: anObject [
	"  Parameter to dndController, see dijit.tree.dndSource.onDndCancel.
	Generally this doesn't need to be set. "

	self eventAt: 'onDndCancel' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onDndDrop: anObject [
	"  Parameter to dndController, see dijit.tree.dndSource.onDndDrop.
	Generally this doesn't need to be set. "

	self eventAt: 'onDndDrop' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onLoad: anObject [
	"  If persist == true the loading may encompass many levels of fetches from the data store, each asynchronous.
	Waits for all to finish "

	self eventAt: 'onLoad' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> onOpen: anObject [
	"  Callback when a node is opened "

	self eventAt: 'onOpen' put: (anObject asFunction: #(#item #node))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> openOnClick [
	"  If true, clicking a folder node's label will open it, rather than calling onClick() "

	self access: 'openOnClick'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> openOnClick: aBoolean [
	"  If true, clicking a folder node's label will open it, rather than calling onClick() "

	self propertyAt: 'openOnClick' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> openOnDblClick [
	"  If true, double-clicking a folder node's label will open it, rather than calling onDblClick() "

	self access: 'openOnDblClick'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> openOnDblClick: aBoolean [
	"  If true, double-clicking a folder node's label will open it, rather than calling onDblClick() "

	self propertyAt: 'openOnDblClick' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetIconClass: aFunction [
	"  Overridable function to return CSS class name to display icon "

	self override: 'getIconClass' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetIconStyle: aFunction [
	"  Overridable function to return CSS styles to display icon "

	self override: 'getIconStyle' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetItemChildren: aFunction [
	"  Deprecated.
	This should be specified on the model itself.
	Overridable function that return array of child items of given parent item, or if parentItem==null then return top items in tree "

	self override: 'getItemChildren' with: (aFunction asFunction: #(#parentItem #onComplete))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetLabel: aFunction [
	"  Overridable function to get the label for a tree node (given the item) "

	self override: 'getLabel' with: (aFunction asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetLabelClass: aFunction [
	"  Overridable function to return CSS class name to display label "

	self override: 'getLabelClass' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetLabelStyle: aFunction [
	"  Overridable function to return CSS styles to display label "

	self override: 'getLabelStyle' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetRowClass: aFunction [
	"  Overridable function to return CSS class name to display row "

	self override: 'getRowClass' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetRowStyle: aFunction [
	"  Overridable function to return CSS styles to display row "

	self override: 'getRowStyle' with: (aFunction asFunction: #(#item #opened))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideGetTooltip: aFunction [
	"  Overridable function to get the tooltip for a tree node (given the item) "

	self override: 'getTooltip' with: (aFunction asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> overrideMayHaveChildren: aFunction [
	"  Deprecated.
	This should be specified on the model itself.
	Overridable function to tell if an item has or may have children.
	Controls whether or not +/- expando icon is shown.
	(For efficiency reasons we may not want to check if an element actually has children until user clicks the expando node) "

	self override: 'mayHaveChildren' with: (aFunction asFunction: #(#item))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> path [
	"  or Item[] Full path from rootNode to selected node expressed as array of items or array of ids.
	Since setting the path may be asynchronous (because ofwaiting on dojo.data), set('path', ...) returns a Deferred to indicate when the set is complete. "

	self access: 'path'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> path: aJsObject [
	"  or Item[] Full path from rootNode to selected node expressed as array of items or array of ids.
	Since setting the path may be asynchronous (because ofwaiting on dojo.data), set('path', ...) returns a Deferred to indicate when the set is complete. "

	self propertyAt: 'path' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> persist [
	"  Enables/disables use of cookies for state saving. "

	self access: 'persist'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> persist: aBoolean [
	"  Enables/disables use of cookies for state saving. "

	self propertyAt: 'persist' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> query [
	"  Deprecated.
	User should specify query to the model directly instead.
	Specifies datastore query to return the root item or top items for the tree. "

	self access: 'query'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> query: aJsObject [
	"  Deprecated.
	User should specify query to the model directly instead.
	Specifies datastore query to return the root item or top items for the tree. "

	self propertyAt: 'query' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> resize: changeSize [ 
	
	self call: 'resize' withArguments: (Array with: changeSize)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> rootNode [
	
	self access: 'rootNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> rootNode: aJsObject [
	
	self propertyAt: 'rootNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> selectedItem [
	"  The currently selected item in this tree.
	This property can only be set (via set('selectedItem', ...)) when that item is already visible in the tree.
	(I.e.
	the tree has already been expanded to show that node.) Should generally use path attribute to set the selected item instead. "

	self access: 'selectedItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> selectedItem: aJsObject [
	"  The currently selected item in this tree.
	This property can only be set (via set('selectedItem', ...)) when that item is already visible in the tree.
	(I.e.
	the tree has already been expanded to show that node.) Should generally use path attribute to set the selected item instead. "

	self propertyAt: 'selectedItem' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> selectedNode [
	
	self access: 'selectedNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> selectedNode: aJsObject [
	
	self propertyAt: 'selectedNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> showRoot [
	"  Should the root node be displayed, or hidden? "

	self access: 'showRoot'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> showRoot: aBoolean [
	"  Should the root node be displayed, or hidden? "

	self propertyAt: 'showRoot' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> store [
	"  Deprecated.
	Use 'model' parameter instead.
	The store to get data to display in the tree. "

	self access: 'store'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> store: aJsObject [
	"  Deprecated.
	Use 'model' parameter instead.
	The store to get data to display in the tree. "

	self propertyAt: 'store' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> subscribeDndCancel: method [ 
	" when DnD was canceled either by user (by hitting Esc), or by dropping items in illegal location. "

	self subscribe: '/dnd/cancel' method: method asFunction.
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> subscribeDndDrop: method [
	"  raised to perform a drop. Parameters are the same as for /dnd/start and one additional parameter is target (the object where items are dropped). "

	self subscribe: '/dnd/drop' method: (method asFunction: #(source nodes copy target))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> subscribeDndDropBefore: method [
	" raised just before the drop. It can be used to capture the drop parameters. Parameters are the same as for /dnd/start, but reflect current values. "

	self subscribe: '/dnd/drop/before' method: (method asFunction: #(source nodes copy target))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> subscribeDndSourceOver: method [
	" when the mouse moves over a source. The source in question is passed as a parameter. The same event is raised when the mouse goes out of a source. In this case null is passed as a parameter. "

	self subscribe: '/dnd/source/over' method: (method asFunction: #(source))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> subscribeDndStart: method [
	" when DnD starts. Current source, nodes, and the copy flag (see startDrag() for more info) are passed as parameters of this event "

	self subscribe: '/dnd/start' method: (method asFunction: #(source nodes copy))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> tree [
	
	self access: 'tree'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> tree: aJsObject [
	
	self propertyAt: 'tree' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTree >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
