Class {
	#name : #DojoAjaxPost,
	#superclass : #DojoAjax,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost class >> functionName [

	^ 'xhrPost'
]

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost >> form: anObject [
	" For posting FORM data, you can provide either the DOM node of your form or the ID of the form. "

	self optionAt: 'form' put: anObject
]

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost >> method [

	^ 'POST'
]

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost >> postData: aString [
	" A string of data you wish to send as the post body. "

	self optionAt: 'postData' put: aString
]
