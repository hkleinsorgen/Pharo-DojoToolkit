"
new dijit.BackgroundIframe(node) Makes a background iframe as a child of node, that fills area (and position) of node
"
Class {
	#name : #DijitBackgroundIframe,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitBackgroundIframe class >> functionName [

	^ 'dijit.BackgroundIframe'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBackgroundIframe >> iframe [
	
	self access: 'iframe'
]

{ #category : '*DojoToolkit-Widgets' }
DijitBackgroundIframe >> iframe: aJsObject [
	
	self propertyAt: 'iframe' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitBackgroundIframe >> resize: node [ 
	"  this function is a no-op in all browsers except IE6, which does not support 100% width/height of absolute positioned iframes "

	self call: 'resize' withArguments: (Array with: node)
]