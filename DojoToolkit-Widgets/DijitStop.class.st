"
Stop an ongoing timed, repeating callback sequence.
"
Class {
	#name : #DijitStop,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitStop class >> functionName [

	^ 'dijit.typematic.stop'
]

{ #category : '*DojoToolkit-Widgets' }
DijitStop >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]
