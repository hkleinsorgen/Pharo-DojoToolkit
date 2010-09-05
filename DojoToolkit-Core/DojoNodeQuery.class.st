"
Represents a function call that returns a single node or a node list

Subclasses must implement the following messages:
	events
		connectEvent:context:method:dontFix:
		connectEvent:method:

Instance Variables:
	arguments	<SequenceableCollection>  Arguments passed to the query


"
Class {
	#name : #DojoNodeQuery,
	#superclass : #DojoObject,
	#instVars : [
		'arguments'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> ajax [
	" convenvience code. you should use a specific request type (get/post) if possible.
	creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajax query: self; yourself
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> ajaxGet [
	" creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajaxGet query: self; yourself
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> ajaxPost [
	" creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajaxPost query: self; yourself
]

{ #category : #'*DojoToolkit-Core-generated' }
DojoNodeQuery >> animation [

	^ self create: DojoAnimation
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> arguments [
	" Arguments passed to the query function "

	^ arguments
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 
	"  connect the event to the node(s) returned by this query. "

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> connectEvent: eventName method: functionOrName [ 
	"  connect the event to the node(s) returned by this query. "

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Core' }
DojoNodeQuery >> setArguments: anArray [
	" Arguments passed to the query function "

	arguments := anArray
]
