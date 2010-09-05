"
A set of widgets indexed by id. A default instance of this class is available as dijit.registry
"
Class {
	#name : #DijitWidgetSet,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet class >> functionName [

	^ 'dijit.WidgetSet'
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> add: widget [ 
	"  Add a widget to this list.
	If a duplicate ID is detected, a error is thrown. "

	self call: 'add' withArguments: (Array with: widget)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> byClass: cls [ 
	"  Reduce this widgetset to a new WidgetSet of a particular declaredClass "

	self call: 'byClass' withArguments: (Array with: cls)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> byId: id [ 
	"  Find a widget in this list by it's id. "

	self call: 'byId' withArguments: (Array with: id)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> every: func thisObj: thisObj [ 
	"  A synthetic clone of dojo.every acting explicitly on this WidgetSet "

	self call: 'every' withArguments: (Array with: func with: thisObj)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> filter: filter thisObj: thisObj [ 
	"  Filter down this WidgetSet to a smaller new WidgetSet Works the same as dojo.filter and dojo.NodeList.filter "

	self call: 'filter' withArguments: (Array with: filter with: thisObj)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> forEach: func thisObj: thisObj [ 
	"  Call specified function for each widget in this set. "

	self call: 'forEach' withArguments: (Array with: func with: thisObj)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> length [
	
	self access: 'length'
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> length: aNumber [
	
	self propertyAt: 'length' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> map: func thisObj: thisObj [ 
	"  Create a new Array from this WidgetSet, following the same rules as dojo.map "

	self call: 'map' withArguments: (Array with: func with: thisObj)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> remove: id [ 
	"  Remove a widget from this WidgetSet.
	Does not destroy the widget; simply removes the reference. "

	self call: 'remove' withArguments: (Array with: id)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> some: func thisObj: thisObj [ 
	"  A synthetic clone of dojo.some acting explictly on this WidgetSet "

	self call: 'some' withArguments: (Array with: func with: thisObj)
]

{ #category : '*DojoToolkit-Widgets' }
DijitWidgetSet >> toArray [
	"  Convert this WidgetSet into a true Array "

	self call: 'toArray'
]
