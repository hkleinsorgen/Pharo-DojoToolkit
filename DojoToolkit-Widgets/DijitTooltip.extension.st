Extension { #name : #DijitTooltip }

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> addTarget: id [ 
	"  Attach tooltip to specified node, if it's not already connected "

	self call: 'addTarget' withArguments: (Array with: id)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> close [
	"  Hide the tooltip or cancel timer for show of tooltip "

	self call: 'close'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> connectId [
	"  Id's of domNodes to attach the tooltip to.
	When user hovers over any of the specified dom nodes, the tooltip will appear.
	Note: Currently connectId can only be specified on initialization, it cannot be changed via attr('connectId', ...) Note: in 2.0 this will be renamed to connectIds for less confusion. "

	self access: 'connectId'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> connectId: aJsObject [
	"  Id's of domNodes to attach the tooltip to.
	When user hovers over any of the specified dom nodes, the tooltip will appear.
	Note: Currently connectId can only be specified on initialization, it cannot be changed via attr('connectId', ...) Note: in 2.0 this will be renamed to connectIds for less confusion. "

	self propertyAt: 'connectId' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> defaultPosition [
	
	self access: 'defaultPosition'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> defaultPosition: anArray [
	
	self propertyAt: 'defaultPosition' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip classSide >> functionName [

	^ 'dijit.Tooltip'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> onHide: anObject [
	"  Called when another widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate hide of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onHide' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> onShow: anObject [
	"  Called when this widget becomes the selected pane in a dijit.layout.TabContainer, dijit.layout.StackContainer, dijit.layout.AccordionContainer, etc.
	Also called to indicate display of a dijit.Dialog, dijit.TooltipDialog, or dijit.TitlePane. "

	self eventAt: 'onShow' put: (anObject asFunction: #(#target #position))
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> open: target [ 
	"  Display the tooltip; usually not called directly. "

	self call: 'open' withArguments: (Array with: target)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> position [
	"  See description of dijit.Tooltip.defaultPosition for details on position parameter. "

	self access: 'position'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> position: aJsObject [
	"  See description of dijit.Tooltip.defaultPosition for details on position parameter. "

	self propertyAt: 'position' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> removeTarget: node [ 
	"  Detach tooltip from specified node "

	self call: 'removeTarget' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> showDelay [
	"  Number of milliseconds to wait after hovering over/focusing on the object, before the tooltip is displayed. "

	self access: 'showDelay'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTooltip >> showDelay: aNumber [
	"  Number of milliseconds to wait after hovering over/focusing on the object, before the tooltip is displayed. "

	self propertyAt: 'showDelay' put: aNumber
]
