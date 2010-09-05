"
The main Dojo UI (Dijit) object
"
Class {
	#name : #DojoUI,
	#superclass : #DojoObject,
	#category : 'DojoToolkit-UI'
}

{ #category : '*DojoToolkit-UI' }
DojoUI class >> functionName [

	^ 'dijit'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> byId: id [
	" Returns a widget by it's id, or if passed a widget, no-op (like dojo.byId()) "
	
	^  (self create: DijitById) id: id; yourself
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> byNode: aNode [
	"Returns the widget corresponding to the given DOMNode"
	
	^ ( self create: DijitByNode )
		node: aNode;
		yourself
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> defaultDuration [
	"  The default animation speed (in ms) to use for all Dijit transitional animations, unless otherwise specified on a per-instance basis.
	Defaults to 200, overrided by djConfig.defaultDuration "

	self access: 'defaultDuration'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> demos [
	"  Home of the official dijit demo code "

	self access: 'demos'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> dijit [
	"  A roll-up for common dijit methods "

	self access: 'dijit'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> dijitALL [
	"  A rollup that includes every dijit.
	You probably don't need this. "

	self access: 'dijit-all'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> enclosingWidget [
	" convenvience: returns the enclosing widget of the 'current' node (this) "

	^ self enclosingWidget: (JSAlias named: 'this')
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> enclosingWidget: aNode [
	"Returns the widget whose DOM tree contains the specified DOMNode, or null if the node is not contained within the DOM tree of any widget"
	
	^ ( self create: DijitEnclosingWidget )
		node: aNode;
		yourself
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> findWidgets: root [ 
	"  Search subtree under root returning widgets found.
	Doesn't search for nested widgets (ie, widgets inside other widgets). "

	self call: 'findWidgets' withArguments: (Array with: root)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> focus: handle [ 
	"  Sets the focused node and the selection according to argument.
	To set focus to an iframe's content, pass in the iframe itself. "

	self call: 'focus' withArguments: (Array with: handle)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getBookmark [
	"  Retrieves a bookmark that can be used with moveToBookmark to return to the same range "

	self call: 'getBookmark'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getDocumentWindow: doc [ 
	
	self call: 'getDocumentWindow' withArguments: (Array with: doc)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getEnclosingWidget: node [ 
	"  Returns the widget whose DOM tree contains the specified DOMNode, or null if the node is not contained within the DOM tree of any widget "

	self call: 'getEnclosingWidget' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getFirstInTabbingOrder: root [ 
	"  Finds the descendant of the specified root node that is first in the tabbing order "

	self call: 'getFirstInTabbingOrder' withArguments: (Array with: root)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getFocus: menu openedForWindow: openedForWindow [ 
	"  Called as getFocus(), this returns an Object showing the current focus and selected text.
	Called as getFocus(widget), where widget is a (widget representing) a button that was just pressed, it returns where focus was before that button was pressed.
	(Pressing the button may have either shifted focus to the button, or removed focus altogether.) In this case the selected text is not returned, since it can't be accurately determined. "

	self call: 'getFocus' withArguments: (Array with: menu with: openedForWindow)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getLastInTabbingOrder: root [ 
	"  Finds the descendant of the specified root node that is last in the tabbing order "

	self call: 'getLastInTabbingOrder' withArguments: (Array with: root)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getPopupAroundAlignment: position leftToRight: leftToRight [ 
	"  Transforms the passed array of preferred positions into a format suitable for passing as the aroundCorners argument to dijit.placeOnScreenAroundElement. "

	self call: 'getPopupAroundAlignment' withArguments: (Array with: position with: leftToRight)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getUniqueId: widgetType [ 
	"  Generates a unique id for a given widgetType "

	self call: 'getUniqueId' withArguments: (Array with: widgetType)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getViewport [
	"  Returns the dimensions and scroll position of the viewable area of a browser window "

	self call: 'getViewport'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getWaiRole: elem [ 
	"  Gets the non-XHTML role for an element (which should be a wai role). "

	self call: 'getWaiRole' withArguments: (Array with: elem)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> getWaiState: elem state: state [ 
	"  Checks for an attribute called 'aria-'+state "

	self call: 'getWaiState' withArguments: (Array with: elem with: state)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> hasDefaultTabStop: elem [ 
	"  Tests if element is tab-navigable even without an explicit tabIndex setting "

	self call: 'hasDefaultTabStop' withArguments: (Array with: elem)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> hasWaiRole: elem role: role [ 
	"  Determines if an element has a particular non-XHTML role. "

	self call: 'hasWaiRole' withArguments: (Array with: elem with: role)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> hasWaiState: elem state: state [ 
	"  Checks for an attribute called 'aria-'+state "

	self call: 'hasWaiState' withArguments: (Array with: elem with: state)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> hideTooltip: aroundNode [ 
	"  Hide the tooltip "

	self call: 'hideTooltip' withArguments: (Array with: aroundNode)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> isCollapsed [
	"  Returns true if there is no text selected "

	self call: 'isCollapsed'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> isTabNavigable: elem [ 
	"  Tests if an element is tab-navigable "

	self call: 'isTabNavigable' withArguments: (Array with: elem)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> moveToBookmark: bookmark [ 
	"  Moves current selection to a bookmark "

	self call: 'moveToBookmark' withArguments: (Array with: bookmark)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> placeOnScreen: node pos: pos y: y corners: corners padding: padding y: y2 [ 
	"  NOTE: node is assumed to be absolutely or relatively positioned "

	self call: 'placeOnScreen' withArguments: (OrderedCollection new add: node; add: pos; add: y; add: corners; add: padding; add: y2; yourself)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> placeOnScreenAroundElement: node aroundElement: aroundElement aroundCorners: aroundCorners layoutNode: layoutNode [ 
	"  Like dijit.placeOnScreenAroundNode(), except it accepts an arbitrary object for the 'around' argument and finds a proper processor to place a node. "

	self call: 'placeOnScreenAroundElement' withArguments: (OrderedCollection new add: node; add: aroundElement; add: aroundCorners; add: layoutNode; yourself)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> placeOnScreenAroundNode: node aroundNode: aroundNode aroundCorners: aroundCorners layoutNode: layoutNode [ 
	"  Place node such that corner of node touches a corner of aroundNode, and that node is fully visible "

	self call: 'placeOnScreenAroundNode' withArguments: (OrderedCollection new add: node; add: aroundNode; add: aroundCorners; add: layoutNode; yourself)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> placeOnScreenAroundRectangle: node aroundRect: aroundRect x: x y: y width: width height: height aroundCorners: aroundCorners layoutNode: layoutNode [ 
	"  Like dijit.placeOnScreenAroundNode(), except that the 'around' parameter is an arbitrary rectangle on the screen (x, y, width, height) instead of a dom node. "

	self call: 'placeOnScreenAroundRectangle' withArguments: (OrderedCollection new add: node; add: aroundRect; add: x; add: y; add: width; add: height; add: aroundCorners; add: layoutNode; yourself)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> placementRegistry [
	
	self access: 'placementRegistry'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> registerIframe: iframe [ 
	"  Currently only used by editor "

	self call: 'registerIframe' withArguments: (Array with: iframe)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> registerWin: targetWindow effectiveNode: effectiveNode [ 
	"  Users should call registerIframe() instead of this method "

	self call: 'registerWin' withArguments: (Array with: targetWindow with: effectiveNode)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> removeWaiRole: elem role: role [ 
	"  Removes the specified non-XHTML role from an element.
	Removes role attribute if no specific role provided (for backwards compat.) "

	self call: 'removeWaiRole' withArguments: (Array with: elem with: role)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> removeWaiState: elem state: state [ 
	"  Sets an attribute called 'aria-'+state "

	self call: 'removeWaiState' withArguments: (Array with: elem with: state)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> robot [
	
	self access: 'robot'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> robotx [
	
	self access: 'robotx'
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> scrollIntoView: node pos: pos [ 
	"  Scroll the passed node into view, if it is not already.
	Deprecated, use dojo.window.scrollIntoView instead. "

	self call: 'scrollIntoView' withArguments: (Array with: node with: pos)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> selectInputText: element start: start stop: stop [ 
	"  Select text in the input element argument, from start (default 0), to stop (default end). "

	self call: 'selectInputText' withArguments: (Array with: element with: start with: stop)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> setWaiRole: elem role: role [ 
	"  Replace existing role attribute with new role.
	If elem already has an XHTML role, append this role to XHTML role and remove other ARIA roles "

	self call: 'setWaiRole' withArguments: (Array with: elem with: role)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> setWaiState: elem state: state value: value [ 
	"  Sets an attribute called 'aria-'+state "

	self call: 'setWaiState' withArguments: (Array with: elem with: state with: value)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> showTooltip: innerHTML aroundNode: aroundNode position: position rtl: rtl [ 
	"  Display tooltip w/specified contents in specified position.
	See description of dijit.Tooltip.defaultPosition for details on position parameter.
	If position is not specified then dijit.Tooltip.defaultPosition is used. "

	self call: 'showTooltip' withArguments: (OrderedCollection new add: innerHTML; add: aroundNode; add: position; add: rtl; yourself)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> unregisterIframe: handle [ 
	"  Unregisters listeners on the specified iframe created by registerIframe.
	After calling be sure to delete or null out the handle itself. "

	self call: 'unregisterIframe' withArguments: (Array with: handle)
]

{ #category : '*DojoToolkit-UI' }
DojoUI >> unregisterWin: handle [ 
	"  Unregisters listeners on the specified window (either the main window or an iframe's window) according to handle returned from registerWin().
	After calling be sure to delete or null out the handle itself. "

	self call: 'unregisterWin' withArguments: (Array with: handle)
]
