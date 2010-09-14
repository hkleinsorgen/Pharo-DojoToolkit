"
Returns the widget corresponding to the given DOM node
"
Class {
	#name : #DijitWidgetByNode,
	#superclass : #DijitWidgetQuery,
	#category : 'DojoToolkit-UI'
}

{ #category : #accessing }
DijitWidgetByNode class >> functionName [

	^ 'byNode'
]

{ #category : #events }
DijitWidgetByNode >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	self shouldNotImplement
]

{ #category : #events }
DijitWidgetByNode >> connectEvent: eventName method: functionOrName [ 

	self shouldNotImplement
]

{ #category : #accessing }
DijitWidgetByNode >> node: aNode [

	^ self setArguments: (Array with: aNode)
]
