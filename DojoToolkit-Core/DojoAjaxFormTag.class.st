"
Specialized <form> brush that knows how to submit the form with an Ajax request
"
Class {
	#name : #DojoAjaxFormTag,
	#superclass : #WAFormTag,
	#category : 'DojoToolkit-Core'
}

{ #category : #attributes }
DojoAjaxFormTag >> method: aString [ 
	" uses Ajax, so do not store it in the attributes. Will use POST anyway "
]

{ #category : #ajax }
DojoAjaxFormTag >> setParent: aBrush canvas: aCanvas [ 

	super setParent: aBrush canvas: aCanvas.
	" needs an id for the Ajax request "
	self ensureId.
]

{ #category : #ajax }
DojoAjaxFormTag >> submit [

	^ self submit:  [ : ajax | ]
]

{ #category : #ajax }
DojoAjaxFormTag >> submit: ajaxConfigurationBlock [ 
	" Returns a script that submits this form with an Ajax request.
	It can be used as an onClick handler

	the ajaxConfigurationBlock  allows to configure the Ajax request. 
	A common use case is to render some feedback "

	| ajax ajaxScript |
	ajax := canvas dojo ajaxPost.
	ajaxScript := ajax form: ( canvas dojo byId: self id ).
	ajaxConfigurationBlock value: ajax.
	^ canvas dojo event stopEvent, ajaxScript
]
