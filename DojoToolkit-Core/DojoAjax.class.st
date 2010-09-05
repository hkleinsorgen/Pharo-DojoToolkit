"
DojoAjax represents an Ajax request.

Implementation note:
Some methods were copied from JQAjax (part of the JQuery package)
"
Class {
	#name : #DojoAjax,
	#superclass : #DojoObject,
	#instVars : [
		'options',
		'callback',
		'callbackId',
		'query'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #parameters }
DojoAjax >> addParameter: anObject [
	"Add the request parameter anObject, a single value or an association."

	(anObject isKindOf: Association)
		ifTrue: [ 
			self parameters add: anObject
		]
		ifFalse: [
			self parameters add: anObject-> anObject
	]
]

{ #category : #parameters }
DojoAjax >> addParameters: aCollection [
	"Add multiple request parameters from aCollection."

	aCollection associations do: [ : assoc |
		self parameters at: assoc key put: assoc value
	].
]

{ #category : #'callbacks - rendering' }
DojoAjax >> append: aRenderable [ 
	"Defines a html rendering callback."

	self render: aRenderable applyResponseWith: #append
]

{ #category : #private }
DojoAjax >> applyResponseWith: aNodeListFunction [ 
	" call the node list function on the reponse "

	^ (( self query call: aNodeListFunction with: ( JSStream on: 'response' )) return: ( JSStream on: 'response' )) asFunction: #( #response #io )
]

{ #category : #accessing }
DojoAjax >> arguments [

	^ Array with: self options
]

{ #category : #callbacks }
DojoAjax >> callback: aBlock [
	"Register aBlock as a primary callback of the receiver. It is only possible to have a single primary callback registered per instance. The primary callback must generate a response."

	self enableCallbacks.
	callback := aBlock fixCallbackTemps
]

{ #category : #callbacks }
DojoAjax >> callback: aBlock translator: aCallbackTranslator [ 
	" Register aBlock as a secondary callback. The block is evaluated with a single object, usually a dictionary.
	The translator generates a Javascript expression that is evaluated  on the client side and returns a data string.
	the data string is then translated into a Smalltalk object "

	self 
		callback: [: dataValue | aBlock value: ( aCallbackTranslator asSmalltalkObject: dataValue renderContext: self renderContext )]
		value: aCallbackTranslator asJavascript.
]

{ #category : #callbacks }
DojoAjax >> callback: aBlock value: anObject [
	"Register aBlock as a secondary callback. anObject is a reference to a Javascript object on the client-side. 
	The object will be sent back to the server as a string and passed into aBlock. Multiple secondary callbacks can be defined with one receiver." 

	self enableCallbacks.
	self addParameter: (self renderContext callbacks
		store: (WAValueCallback on: aBlock)) 
			-> anObject
]

{ #category : #'callbacks - convenience' }
DojoAjax >> callbackWithArgument: aBlock [
	" registers a callback that is evaluated with the first argument  "

	self callbackWithArguments: aBlock translator: (DojoCallbackTranslator argumentTranslator)
]

{ #category : #callbacks }
DojoAjax >> callbackWithArguments: aBlock translator: aCallbackTranslator [ 
	" similar to #callback:translator:, with one difference:
	aBlock is evaluated with all arguments in the orders specified by the translator
	"

	self 
		callback: [: dataValue | aBlock valueWithArguments: ( aCallbackTranslator asCollection: dataValue renderContext: self renderContext )]
		value: (JSStream on: aCallbackTranslator asJavascript).
]

{ #category : #options }
DojoAjax >> content [
	" the objects passed to the reciever (aka Seaside) "

	^ self options at: 'content' ifAbsentPut: [ GRSmallDictionary new ]
]

{ #category : #'callbacks - private' }
DojoAjax >> enableCallbacks [

	self hasCallback ifTrue: [ ^ self ].
	self url: self renderContext actionUrl withoutQuery.
	self addParameters: self renderContext actionUrl queryFields.
	self addParameter: (callbackId := self renderContext callbacks
		store: (JSAjaxCallback on: [ self processCallback ]))
]

{ #category : #'callbacks - scripts' }
DojoAjax >> errorScript: errorScriptBlock [ 

	| script |
	script := String streamContents: [: stream | self script: [: s | errorScriptBlock value: s value: ( JSStream on: 'String(error)' )] on: stream ].
	self onError: ( script asFunction: #( #error #io )).
]

{ #category : #options }
DojoAjax >> failOk: aBoolean [
	" By default, dojo.xhrGet outputs an error to the console when there is a transport error.
	Setting failOk to true will prevent that behavior and will suppress the error message."

	self optionAt: 'ailOk' put: aBoolean
]

{ #category : #options }
DojoAjax >> handleAs: type [
	" Original documentation:
		This parameter specifies how to handle the data returned from the server. It usually takes values of 'text', 'xml', or 'json'
	Note:
		'javascript' is supported, too "

	self options at: 'handleAs' put: type
]

{ #category : #options }
DojoAjax >> handleAsJSON [

	self handleAs: 'json'
]

{ #category : #options }
DojoAjax >> handleAsJavascript [

	self handleAs: 'javascript'
]

{ #category : #options }
DojoAjax >> handleAsText [

	self handleAs: 'text'
]

{ #category : #options }
DojoAjax >> handleAsXML [

	self handleAs: 'xml'
]

{ #category : #'callbacks - private' }
DojoAjax >> hasCallback [
	^ callbackId notNil
]

{ #category : #options }
DojoAjax >> headers: aDictionary [
	" These are the headers to send as part of the request "

	self options at: 'headers' put: aDictionary
]

{ #category : #'callbacks - rendering' }
DojoAjax >> html: aRenderable [ 
	"Defines a html rendering callback. The nodes will be replace with the contents returned by the request "

	self render: aRenderable applyResponseWith: #innerHTML
]

{ #category : #accessing }
DojoAjax >> method [

	self subclassResponsibility
]

{ #category : #'options - response handling' }
DojoAjax >> onError: anObject [
	" The error parameter is another callback function that is only invoked when an error occurs "

	self optionAt: 'error' put: anObject
]

{ #category : #'options - response handling' }
DojoAjax >> onHandle: anObject [
	" Sometimes you want to do something regardless of whether a call completes or fails. Thats where handle comes it, it will be invoked by xhr regardless "

	self optionAt: 'handle' put: anObject
]

{ #category : #'options - response handling' }
DojoAjax >> onLoad: anObject [
	" The function dojo should invoke when the data is returned from the server. "

	self optionAt: 'load' put: anObject
]

{ #category : #'options - private' }
DojoAjax >> optionAt: aKey put: aValue [
	^ self options at: aKey put: aValue
]

{ #category : #'options - private' }
DojoAjax >> options [
	^ options ifNil: [ options := GRSmallDictionary new ]
]

{ #category : #private }
DojoAjax >> owner [

	^ owner
]

{ #category : #private }
DojoAjax >> owner: aOwner [ 

	owner := aOwner.
]

{ #category : #parameters }
DojoAjax >> parameters [
	"Answer the request parameters of the reciever."
	
	^ self content
]

{ #category : #options }
DojoAjax >> preventCache: aBoolean [
	" A boolean value that tells dojo to append a unique query parameter to each request "

	self optionAt: 'preventCache' put: aBoolean
]

{ #category : #'callbacks - private' }
DojoAjax >> processCallback [
	callback isNil
		ifFalse: [ callback value ]
]

{ #category : #accessing }
DojoAjax >> query [

	^ query
]

{ #category : #accessing }
DojoAjax >> query: aQuery [ 

	query := aQuery.
]

{ #category : #'callbacks - rendering' }
DojoAjax >> render: aRenderable applyResponseWith: aNodeListFunction [ 
	"Defines a html rendering callback.
	The nodes will be modified by applying the function to the contents returned by the request "

	self render: aRenderable errorScript: nil applyResponseWith: aNodeListFunction
]

{ #category : #'callbacks - rendering' }
DojoAjax >> render: aRenderable errorScript: errorScriptBlock applyResponseWith: aNodeListFunction [ 
	"Defines a html rendering callback.
	The nodes will be modified by applying the function to the contents returned by the request.
	If an error occurs, the error script will be evaluated (with 'error' and 'io' as arguments) "

	self require: self packageNodeListManipulate.
	self handleAsText.
	self onLoad: ( self applyResponseWith: aNodeListFunction ).
	errorScriptBlock notNil 
		ifTrue: [ self errorScript: errorScriptBlock ].
	self respond: 
		[: response |
			response doNotCache;
				contentType: self application contentType.
			self render: aRenderable on: response stream
		].
]

{ #category : #callbacks }
DojoAjax >> respond: aBlock [
	"Defines a response callback."

	self callback: [ self requestContext respond: aBlock ]
]

{ #category : #'callbacks - scripts' }
DojoAjax >> script: aBlock [
	"Defines a script rendering callback "

	self script: aBlock errorScript: nil
]

{ #category : #'callbacks - scripts' }
DojoAjax >> script: aBlock errorScript: errorScriptBlock [
	"Defines a script rendering callback. "

	self require: self packageNodeListManipulate.
	self handleAsJavascript.
	self 
		onLoad: (((JSStream on:  'response')) asFunction: #( #response #io )).
	errorScriptBlock notNil 
		ifTrue: [ self errorScript: errorScriptBlock ].
	self respond: 
		[: response |
			response doNotCache;
				contentType: self application contentType.
			self script: aBlock on: response stream.
		].
]

{ #category : #options }
DojoAjax >> sync: aBoolean [
	" A boolean value that says whether or not the xhr function should block until data is returned or return immediately and rely on callbacks for data handling"

	self optionAt: 'sync' put: aBoolean
]

{ #category : #options }
DojoAjax >> timeout: aNumber [
	" Number of milliseconds to wait until timing out the request. Default is 0 which means infinite (no timeout). "

	self optionAt: 'timeout' put: aNumber
]

{ #category : #options }
DojoAjax >> url [
	^ self options at: 'url' ifAbsentPut: [ WAUrl new ]
]

{ #category : #options }
DojoAjax >> url: aUrl [
	"A string containing the URL to which the request is sent."
	
	self optionAt: 'url' put: aUrl
]
