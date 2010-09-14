Class {
	#name : #DijitPopupMenuItem,
	#superclass : #DijitMenuItem,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitPopupMenuItem class >> functionName [

	^ 'dijit.PopupMenuItem'
]

{ #category : #'properties-generated' }
DijitPopupMenuItem >> dropDownContainer [
	
	self access: 'dropDownContainer'
]

{ #category : #'properties-generated' }
DijitPopupMenuItem >> dropDownContainer: aJsObject [
	
	self propertyAt: 'dropDownContainer' put: aJsObject
]

{ #category : #'events-generated' }
DijitPopupMenuItem >> onClick: evt [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (evt asFunction: #(#event))
]

{ #category : #'properties-generated' }
DijitPopupMenuItem >> popup [
	
	self access: 'popup'
]

{ #category : #'properties-generated' }
DijitPopupMenuItem >> popup: aJsObject [
	
	self propertyAt: 'popup' put: aJsObject
]
