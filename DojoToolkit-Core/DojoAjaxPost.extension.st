Extension { #name : #DojoAjaxPost }

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost >> form: anObject [
	" For posting FORM data, you can provide either the DOM node of your form or the ID of the form. "

	self optionAt: 'form' put: anObject
]

{ #category : '*DojoToolkit-Core' }
DojoAjaxPost classSide >> functionName [

	^ 'xhrPost'
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
