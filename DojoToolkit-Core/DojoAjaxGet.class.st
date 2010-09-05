Class {
	#name : #DojoAjaxGet,
	#superclass : #DojoAjax,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoAjaxGet class >> functionName [

	^ 'xhrGet'
]

{ #category : #accessing }
DojoAjaxGet >> method [

	^ 'GET'
]
