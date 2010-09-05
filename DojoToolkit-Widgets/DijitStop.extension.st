Extension { #name : #DijitStop }

{ #category : '*DojoToolkit-Widgets' }
DijitStop >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStop classSide >> functionName [

	^ 'dijit.typematic.stop'
]
