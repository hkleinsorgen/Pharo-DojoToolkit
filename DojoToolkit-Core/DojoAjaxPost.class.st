"
Ajax POST request
"
Class {
	#name : #DojoAjaxPost,
	#superclass : #DojoAjaxRequest,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoAjaxPost class >> functionName [

	^ 'xhrPost'
]

{ #category : #options }
DojoAjaxPost >> form: anObject [
	" For posting FORM data, you can provide either the DOM node of your form or the ID of the form. "

	self optionAt: 'form' put: anObject
]

{ #category : #options }
DojoAjaxPost >> method [

	^ 'POST'
]

{ #category : #options }
DojoAjaxPost >> postData: aString [
	" A string of data you wish to send as the post body. "

	self optionAt: 'postData' put: aString
]
