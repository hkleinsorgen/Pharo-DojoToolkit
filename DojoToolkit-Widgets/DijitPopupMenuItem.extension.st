Extension { #name : #DijitPopupMenuItem }

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem >> dropDownContainer [
	
	self access: 'dropDownContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem >> dropDownContainer: aJsObject [
	
	self propertyAt: 'dropDownContainer' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem classSide >> functionName [

	^ 'dijit.PopupMenuItem'
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem >> popup [
	
	self access: 'popup'
]

{ #category : '*DojoToolkit-Widgets' }
DijitPopupMenuItem >> popup: aJsObject [
	
	self propertyAt: 'popup' put: aJsObject
]
