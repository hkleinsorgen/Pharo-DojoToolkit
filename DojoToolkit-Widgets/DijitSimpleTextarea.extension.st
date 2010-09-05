Extension { #name : #DijitSimpleTextarea }

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> cols [
	
	self access: 'cols'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> cols: aString [
	
	self propertyAt: 'cols' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea classSide >> functionName [

	^ 'dijit.form.SimpleTextarea'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> rows [
	"  The number of characters per line. "

	self access: 'rows'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> rows: aNumber [
	"  The number of characters per line. "

	self propertyAt: 'rows' put: aNumber
]
