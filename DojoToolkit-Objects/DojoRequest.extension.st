Extension { #name : #DojoRequest }

{ #category : '*DojoToolkit-Objects' }
DojoRequest >> abort [
	"  This function is a hook point for stores to provide as a way for a fetch to be halted mid-processing.
	For more details on the fetch() api, please see dojo.data.api.Read.fetch() "

	self call: 'abort'
]

{ #category : '*DojoToolkit-Objects' }
DojoRequest >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : '*DojoToolkit-Objects' }
DojoRequest classSide >> functionName [

	^ 'dojo.data.api.Request'
]
