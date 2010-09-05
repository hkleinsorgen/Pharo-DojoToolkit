"
Objects of this class keep list of arrays in the form [name, check, wrap, directReturn] that are used to determine what the contextual result of a set of checked arguments is. All check/wrap functions in this registry should be of the same arity.
"
Class {
	#name : #DojoAdapterRegistry,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Objects'
}

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry class >> functionName [

	^ 'dojo.AdapterRegistry'
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> match [
	"  Find an adapter for the given arguments.
	If no suitable adapter is found, throws an exception.
	match() accepts any number of arguments, all of which are passed to all matching functions from the registered pairs. "

	self call: 'match'
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> pairs [
	
	self access: 'pairs'
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> pairs: anArray [
	
	self propertyAt: 'pairs' put: anArray
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> register: name check: check wrap: wrap directReturn: directReturn override: override [ 
	"  register a check function to determine if the wrap function or object gets selected "

	self call: 'register' withArguments: (OrderedCollection new add: name; add: check; add: wrap; add: directReturn; add: override; yourself)
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> returnWrappers [
	
	self access: 'returnWrappers'
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> returnWrappers: aJsObject [
	
	self propertyAt: 'returnWrappers' put: aJsObject
]

{ #category : '*DojoToolkit-Objects' }
DojoAdapterRegistry >> unregister: name [ 
	"  Remove a named adapter from the registry "

	self call: 'unregister' withArguments: (Array with: name)
]
