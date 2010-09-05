Class {
	#name : #DojoAjaxDelete,
	#superclass : #DojoAjax,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoAjaxDelete class >> functionName [

	^ 'xhrDelete'
]

{ #category : #accessing }
DojoAjaxDelete >> method [

	^ 'DELETE'
]
