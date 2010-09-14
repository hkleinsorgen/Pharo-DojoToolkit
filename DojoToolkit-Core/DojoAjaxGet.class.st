"
Ajax GET request
"
Class {
	#name : #DojoAjaxGet,
	#superclass : #DojoAjaxRequest,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoAjaxGet class >> functionName [

	^ 'xhrGet'
]

{ #category : #accessing }
DojoAjaxGet >> method [

	^ 'GET'
]
