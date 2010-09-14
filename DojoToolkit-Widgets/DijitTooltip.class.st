"
Pops up a tooltip (a help message) when you hover over a node.
"
Class {
	#name : #DijitTooltip,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitTooltip class >> functionName [

	^ 'dijit.Tooltip'
]

{ #category : #'functions-generated' }
DijitTooltip >> addTarget: id [ 
	"  Attach tooltip to specified node, if it's not already connected "

	self call: 'addTarget' withArguments: (Array with: id)
]

{ #category : #'functions-generated' }
DijitTooltip >> close [
	"  Hide the tooltip or cancel timer for show of tooltip "

	self call: 'close'
]

{ #category : #'properties-generated' }
DijitTooltip >> connectId [
	"  Id's of domNodes to attach the tooltip to.
	When user hovers over any of the specified dom nodes, the tooltip will appear.
	Note: Currently connectId can only be specified on initialization, it cannot be changed via attr('connectId', ...) Note: in 2.0 this will be renamed to connectIds for less confusion. "

	self access: 'connectId'
]

{ #category : #'properties-generated' }
DijitTooltip >> connectId: aJsObject [
	"  Id's of domNodes to attach the tooltip to.
	When user hovers over any of the specified dom nodes, the tooltip will appear.
	Note: Currently connectId can only be specified on initialization, it cannot be changed via attr('connectId', ...) Note: in 2.0 this will be renamed to connectIds for less confusion. "

	self propertyAt: 'connectId' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTooltip >> defaultPosition [
	
	self access: 'defaultPosition'
]

{ #category : #'properties-generated' }
DijitTooltip >> defaultPosition: anArray [
	
	self propertyAt: 'defaultPosition' put: anArray
]

{ #category : #'events-generated' }
DijitTooltip >> onHide: anObject [
	"  Called when another widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate hide of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onHide' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitTooltip >> onShow: anObject [
	"  Called when this widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate display of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onShow' put: (anObject asFunction: #(#target #position))
]

{ #category : #'functions-generated' }
DijitTooltip >> open: target [ 
	"  Display the tooltip; usually not called directly. "

	self call: 'open' withArguments: (Array with: target)
]

{ #category : #'properties-generated' }
DijitTooltip >> position [
	"  See description of dijit.Tooltip.defaultPosition for details on position parameter. "

	self access: 'position'
]

{ #category : #'properties-generated' }
DijitTooltip >> position: aJsObject [
	"  See description of dijit.Tooltip.defaultPosition for details on position parameter. "

	self propertyAt: 'position' put: aJsObject
]

{ #category : #'functions-generated' }
DijitTooltip >> removeTarget: node [ 
	"  Detach tooltip from specified node "

	self call: 'removeTarget' withArguments: (Array with: node)
]

{ #category : #'properties-generated' }
DijitTooltip >> showDelay [
	"  Number of milliseconds to wait after hovering over/focusing on the object, before the tooltip is displayed. "

	self access: 'showDelay'
]

{ #category : #'properties-generated' }
DijitTooltip >> showDelay: aNumber [
	"  Number of milliseconds to wait after hovering over/focusing on the object, before the tooltip is displayed. "

	self propertyAt: 'showDelay' put: aNumber
]
