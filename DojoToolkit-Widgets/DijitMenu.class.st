Class {
	#name : #DijitMenu,
	#superclass : #DijitMenuBase,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitMenu class >> functionName [

	^ 'dijit.Menu'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> bindDomNode: node [ 
	"  Attach menu to given node "

	self call: 'bindDomNode' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> contextMenuForWindow [
	"  If true, right clicking anywhere on the window will cause this context menu to open.
	If false, must specify targetNodeIds. "

	self access: 'contextMenuForWindow'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> contextMenuForWindow: aBoolean [
	"  If true, right clicking anywhere on the window will cause this context menu to open.
	If false, must specify targetNodeIds. "

	self propertyAt: 'contextMenuForWindow' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> getPlaceholders: label [ 
	"  returns an array of placeholders with the given label.
	There can be multiples. "

	self call: 'getPlaceholders' withArguments: (Array with: label)
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> leftClickToOpen [
	"  If true, menu will open on left click instead of right click, similiar to a file menu. "

	self access: 'leftClickToOpen'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> leftClickToOpen: aBoolean [
	"  If true, menu will open on left click instead of right click, similiar to a file menu. "

	self propertyAt: 'leftClickToOpen' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> refocus [
	"  When this menu closes, re-focus the element which had focus before it was opened. "

	self access: 'refocus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> refocus: aBoolean [
	"  When this menu closes, re-focus the element which had focus before it was opened. "

	self propertyAt: 'refocus' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> targetNodeIds [
	"  Array of dom node ids of nodes to attach to.
	Fill this with nodeIds upon widget creation and it becomes context menu for those nodes. "

	self access: 'targetNodeIds'
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> targetNodeIds: aJsObject [
	"  Array of dom node ids of nodes to attach to.
	Fill this with nodeIds upon widget creation and it becomes context menu for those nodes. "

	self propertyAt: 'targetNodeIds' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitMenu >> unBindDomNode: nodeName [ 
	"  Detach menu from given node "

	self call: 'unBindDomNode' withArguments: (Array with: nodeName)
]
