Extension { #name : #DijitBackgroundIframe }

{ #category : '*DojoToolkit-Widgets' }
DijitBackgroundIframe classSide >> functionName [

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
