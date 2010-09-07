Class {
	#name : #DijitWidgetQuery,
	#superclass : #DojoNodeQuery,
	#category : 'DojoToolkit-UI'
}

{ #category : #events }
DijitWidgetQuery >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	^ self dojo connect: self event: eventName context: contextObject method: functionOrName dontFix: dontFix
]

{ #category : #events }
DijitWidgetQuery >> connectEvent: eventName method: functionOrName [ 

	^ self dojo connect: self event: eventName method: functionOrName
]

{ #category : #query }
DijitWidgetQuery >> id: aString [ 
	" set the node id "

	^ self setArguments: (Array with: aString )
]

{ #category : #accessing }
DijitWidgetQuery >> nodeId [

	^ self arguments first
]

{ #category : #subscribtions }
DijitWidgetQuery >> subscribe: topic method: method [ 
	"  Provide widget-specific analog to dojo.subscribe, except with the implicit use of this widget as the target object "

	self call: 'subscribe' withArguments: (Array with: topic with: method asFunction)
]
