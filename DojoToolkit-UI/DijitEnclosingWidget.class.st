"
Returns the widget whose DOM tree contains the specified DOMNode, or null if the node is not contained within the DOM tree of any widget
"
Class {
	#name : #DijitEnclosingWidget,
	#superclass : #DijitWidgetByNode,
	#category : 'DojoToolkit-UI'
}

{ #category : #accessing }
DijitEnclosingWidget class >> functionName [

	^ 'getEnclosingWidget'
]
