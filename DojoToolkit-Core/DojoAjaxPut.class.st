"
Ajax PUT request
"
Class {
	#name : #DojoAjaxPut,
	#superclass : #DojoAjaxRequest,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoAjaxPut class >> functionName [

	^ 'xhrPut'
]

{ #category : #accessing }
DojoAjaxPut >> method [

	^ 'PUT'
]
