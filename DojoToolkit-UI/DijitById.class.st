"
 Returns a widget by it's id, or if passed a widget, no-op (like dojo.byId()) 
"
Class {
	#name : #DijitById,
	#superclass : #DijitWidgetQuery,
	#category : 'DojoToolkit-UI'
}

{ #category : #accessing }
DijitById class >> functionName [

	^ 'byId'
]
