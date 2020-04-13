"
Specialized <form> brush that knows how to submit the form with an Ajax request
"
Class {
	#name : #DojoAjaxFormTag,
	#superclass : #WAFormTag,
	#category : 'DojoToolkit-Core'
}

{ #category : #attributes }
DojoAjaxFormTag >> action: aUrlOrString [
	"  uses Ajax, so do not store it in the attributes "
]

{ #category : #attributes }
DojoAjaxFormTag >> method: aString [ 
	" Will use POST anyway "

	super method: 'post'
]

{ #category : #initialization }
DojoAjaxFormTag >> setParent: aBrush canvas: aCanvas [ 

	super setParent: aBrush canvas: aCanvas.
	" needs an id for the Ajax request "
	self ensureId.
]

{ #category : #public }
DojoAjaxFormTag >> submit: ajaxConfigurationBlock [ 
	" Connect submit to an Ajax post request.

	the ajaxConfigurationBlock  allows to configure the Ajax request. 
	A common use case is to render some feedback "

	| ajax ajaxScript formID script |
	ajax := canvas dojo ajaxPost.
	formID := self id.
	formID isNil ifTrue: [ self error: 'Form has no id' ].
	ajaxScript := ajax form: ( canvas dojo byId: formID).
	ajaxConfigurationBlock value: ajax.
	script := canvas dojo event stopEvent , ajaxScript.
	canvas document addLoadScript: (canvas dojo connect: (canvas dojo byId: formID) event: 'onsubmit' method: (script asFunction: #(event)))
]
