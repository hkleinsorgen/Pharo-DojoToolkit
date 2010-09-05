Extension { #name : #DijitTabController }

{ #category : '*DojoToolkit-Widgets' }
DijitTabController classSide >> functionName [

	^ 'dijit.layout.TabController'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabController >> tabPosition [
	"  Defines where tabs go relative to the content.
	'top', 'bottom', 'left-h', 'right-h' "

	self access: 'tabPosition'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTabController >> tabPosition: aString [
	"  Defines where tabs go relative to the content.
	'top', 'bottom', 'left-h', 'right-h' "

	self propertyAt: 'tabPosition' put: aString
]
