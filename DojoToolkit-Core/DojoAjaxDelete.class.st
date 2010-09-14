"
Ajax DELETE request
"
Class {
	#name : #DojoAjaxDelete,
	#superclass : #DojoAjaxRequest,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoAjaxDelete class >> functionName [

	^ 'xhrDelete'
]

{ #category : #accessing }
DojoAjaxDelete >> method [

	^ 'DELETE'
]
