Class {
	#name : #DijitMenu,
	#superclass : #DijitMenuBase,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitMenu class >> functionName [

	^ 'dijit.Menu'
]

{ #category : #'functions-generated' }
DijitMenu >> bindDomNode: node [ 
	"  Attach menu to given node "

	self call: 'bindDomNode' withArguments: (Array with: node)
]

{ #category : #'properties-generated' }
DijitMenu >> contextMenuForWindow [
	"  If true, right clicking anywhere on the window will cause this context menu to open.
	If false, must specify targetNodeIds. "

	self access: 'contextMenuForWindow'
]

{ #category : #'properties-generated' }
DijitMenu >> contextMenuForWindow: aBoolean [
	"  If true, right clicking anywhere on the window will cause this context menu to open.
	If false, must specify targetNodeIds. "

	self propertyAt: 'contextMenuForWindow' put: aBoolean
]

{ #category : #'functions-generated' }
DijitMenu >> getPlaceholders: label [ 
	"  returns an array of placeholders with the given label.
	There can be multiples. "

	self call: 'getPlaceholders' withArguments: (Array with: label)
]

{ #category : #'properties-generated' }
DijitMenu >> leftClickToOpen [
	"  If true, menu will open on left click instead of right click, similiar to a file menu. "

	self access: 'leftClickToOpen'
]

{ #category : #'properties-generated' }
DijitMenu >> leftClickToOpen: aBoolean [
	"  If true, menu will open on left click instead of right click, similiar to a file menu. "

	self propertyAt: 'leftClickToOpen' put: aBoolean
]

{ #category : #'events-generated' }
DijitMenu >> onClose: anObject [
	"  Called when this widget is being displayed as a popup (ex: a Calendar popped up from a DateTextBox), and it is hidden.
	This is called from the dijit.popup code, and should not be called directly.
	Also used as a parameter for children of dijit.layout.StackContainer or subclasses.
	Callback if a user tries to close the child.
	Child will be closed if this function returns true. "

	self eventAt: 'onClose' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitMenu >> refocus [
	"  When this menu closes, re-focus the element which had focus before it was opened. "

	self access: 'refocus'
]

{ #category : #'properties-generated' }
DijitMenu >> refocus: aBoolean [
	"  When this menu closes, re-focus the element which had focus before it was opened. "

	self propertyAt: 'refocus' put: aBoolean
]

{ #category : #'properties-generated' }
DijitMenu >> targetNodeIds [
	"  Array of dom node ids of nodes to attach to.
	Fill this with nodeIds upon widget creation and it becomes context menu for those nodes. "

	self access: 'targetNodeIds'
]

{ #category : #'properties-generated' }
DijitMenu >> targetNodeIds: aJsObject [
	"  Array of dom node ids of nodes to attach to.
	Fill this with nodeIds upon widget creation and it becomes context menu for those nodes. "

	self propertyAt: 'targetNodeIds' put: aJsObject
]

{ #category : #'functions-generated' }
DijitMenu >> unBindDomNode: nodeName [ 
	"  Detach menu from given node "

	self call: 'unBindDomNode' withArguments: (Array with: nodeName)
]
