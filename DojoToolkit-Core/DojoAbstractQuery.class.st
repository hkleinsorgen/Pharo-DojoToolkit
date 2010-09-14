"
Represents a function call that returns a node, node list or widget

Subclasses must implement the following messages:
	events
		connectEvent:context:method:dontFix:
		connectEvent:method:

Instance Variables:
	arguments	<SequenceableCollection>  Arguments passed to the query


"
Class {
	#name : #DojoAbstractQuery,
	#superclass : #DojoObject,
	#instVars : [
		'arguments'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #ajax }
DojoAbstractQuery >> ajax [
	" convenvience code. you should use a specific request type (get/post) if possible.
	creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajax query: self; yourself
]

{ #category : #ajax }
DojoAbstractQuery >> ajaxGet [
	" creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajaxGet query: self; yourself
]

{ #category : #ajax }
DojoAbstractQuery >> ajaxPost [
	" creates an Ajax request that can replace the node(s) with data loaded via XHR "

	^ self dojo ajaxPost query: self; yourself
]

{ #category : #'*DojoToolkit-Core-generated' }
DojoAbstractQuery >> animation [

	^ self create: DojoAnimation
]

{ #category : #accessing }
DojoAbstractQuery >> arguments [
	" Arguments passed to the query function "

	^ arguments
]

{ #category : #accessing }
DojoAbstractQuery >> asNodeListQuery [
	" convert this query into nodelist query.
	Always returns a copy!  "

	^ self nodeId ifNotNil: [: id | self dojo query id: id ] ifNil: [ DojoError signal: 'Cannot create nodelist query from ' , self printString ]
]

{ #category : #events }
DojoAbstractQuery >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 
	"  connect the event to the node(s) returned by this query. "

	self subclassResponsibility
]

{ #category : #events }
DojoAbstractQuery >> connectEvent: eventName method: functionOrName [ 
	"  connect the event to the node(s) returned by this query. "

	self subclassResponsibility
]

{ #category : #accessing }
DojoAbstractQuery >> nodeId [
	" id of 'the' node, or nil if not applicable "

	^ nil
]

{ #category : #private }
DojoAbstractQuery >> setArguments: anArray [
	" Arguments passed to the query function "

	arguments := anArray
]
