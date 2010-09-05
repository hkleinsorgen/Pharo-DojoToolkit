Extension { #name : #DijitWidgetQuery }

{ #category : '*DojoToolkit-UI' }
DijitWidgetQuery >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 

	^ self dojo connect: self event: eventName context: contextObject method: functionOrName dontFix: dontFix
]

{ #category : '*DojoToolkit-UI' }
DijitWidgetQuery >> connectEvent: eventName method: functionOrName [ 

	^ self dojo connect: self event: eventName method: functionOrName
]

{ #category : '*DojoToolkit-UI' }
DijitWidgetQuery >> id: aString [ 
	"Select a DOM node by id "

	^ self setArguments: (Array with: aString )
]

{ #category : '*DojoToolkit-UI' }
DijitWidgetQuery >> subscribe: topic method: method [ 
	"  Provide widget-specific analog to dojo.subscribe, except with the implicit use of this widget as the target object "

	self call: 'subscribe' withArguments: (Array with: topic with: method asFunction)
]
