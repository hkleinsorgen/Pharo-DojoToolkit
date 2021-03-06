"
DojoAjax represents an Ajax request.

Implementation note:
Some methods were copied from JQAjax (part of the JQuery package)
"
Class {
	#name : #DojoAjaxRequest,
	#superclass : #DojoObject,
	#instVars : [
		'options',
		'callback',
		'callbackId',
		'query',
		'objectsToRender'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #parameters }
DojoAjaxRequest >> addParameter: anObject [
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
DojoAjaxRequest >> addParameters: aCollection [
	"Add multiple request parameters from aCollection."

	aCollection associations do: [ : assoc |
		self parameters at: assoc key put: assoc value
	].
]

{ #category : #'callbacks - rendering' }
DojoAjaxRequest >> append: aRenderable [ 
	"Defines a html rendering callback."

	self render: aRenderable applyResponseWith: #append.
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> applyHtmlResponseWith: aNodeListFunction [ 
	" Call the node list function on the reponse to modify the DOM.
	Also parse the new nodes with the markup parser.

	Evaluating scripts:
		Unlike jQuery's .load function, this won't evaluate scripts on all browsers.
		As a workaround, DojoAjaxScriptGenerator adds scripts with a special type, 
		which are evaluated after modifying the DOM.
		
		Another solution would have been to use dojox.layout.ContentPane, 
		but this seems to be less flexible "

	| applyScript script parseID parseIDString |
	parseID := self query ifNotNil: [: q | q nodeId ].
	parseIDString := parseID notNil 
			ifTrue: [ '"' , parseID , '"' ]
			ifFalse: [ 'null' ].
	applyScript := self nodeListQuery call: aNodeListFunction with: ( JSStream on: 'response' ).
	script := applyScript , ( JSStream on: 'evalAjaxScripts(', parseIDString, ')' ).
	^ ( script return: ( JSStream on: 'response' )) asFunction: #( #response #io )
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> applyMultiNodeHtmlResponseWith: aNodeListFunction [ 
	" Call the node list function on each HTML fragment of the JSON reponse to modify the DOM.
	Also parse the new nodes with the markup parser. "

	^ (JSStream on: 'applyMultiNodeHtmlResponse(response, "', aNodeListFunction, '")') asFunction: #( response functionName)
]

{ #category : #accessing }
DojoAjaxRequest >> arguments [

	^ Array with: self options
]

{ #category : #callbacks }
DojoAjaxRequest >> callback: aBlock [
	"Register aBlock as a primary callback of the receiver. It is only possible to have a single primary callback registered per instance. 
	The primary callback must generate a response."

	self enableCallbacks.
	callback := self wrappedCallbackBlock: aBlock
]

{ #category : #'callbacks - convenience' }
DojoAjaxRequest >> callback: aBlock javascript: anObject [ 
	" if the javascript object is a string, assume that it is a Javascript, not a literal string "

	| jsObject |
	jsObject := anObject isString 
			ifTrue: [ JSStream on: anObject ]
			ifFalse: [ anObject ].
	self callback: aBlock value: jsObject.
]

{ #category : #callbacks }
DojoAjaxRequest >> callback: aBlock translator: aCallbackTranslator [ 
	" Register aBlock as a secondary callback. The block is evaluated with a single object, usually a dictionary.
	The translator generates a Javascript expression that is evaluated  on the client side and returns a data string.
	the data string is then translated into a Smalltalk object "

	self 
		callback: [: dataValue | aBlock value: ( aCallbackTranslator asSmalltalkObject: dataValue renderContext: self renderContext )]
		value: aCallbackTranslator javascriptObject.
]

{ #category : #callbacks }
DojoAjaxRequest >> callback: aBlock value: anObject [
	"Register aBlock as a secondary callback. anObject is a reference to a Javascript object on the client-side. 
	The object will be sent back to the server as a string and passed into aBlock. Multiple secondary callbacks can be defined with one receiver." 

	self enableCallbacks.
	self addParameter: (self renderContext callbacks
		store: (WAValueCallback on: (self wrappedCallbackBlock: aBlock))) 
			-> anObject
]

{ #category : #'callbacks - convenience' }
DojoAjaxRequest >> callbackWithArgument: aBlock [
	" registers a callback that is evaluated with the first argument  "

	self callbackWithArguments: aBlock translator: (DojoCallbackTranslator argumentTranslator)
]

{ #category : #callbacks }
DojoAjaxRequest >> callbackWithArguments: aBlock translator: aCallbackTranslator [ 
	" similar to #callback:translator:, with one difference:
	aBlock is evaluated with all arguments in the orders specified by the translator
	"

	self 
		callback: [: dataValue | aBlock valueWithPossibleArguments: ( aCallbackTranslator asCollection: dataValue renderContext: self renderContext )]
		value: aCallbackTranslator javascriptObject.
]

{ #category : #options }
DojoAjaxRequest >> content [
	" the objects passed to the reciever (aka Seaside) "

	^ self options at: 'content' ifAbsentPut: [ GRSmallDictionary new ]
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> enableCallbacks [

	self hasCallback ifTrue: [ ^ self ].
	self url: self renderContext actionUrl withoutQuery.
	self addParameters: self renderContext actionUrl queryFields.
	self addParameter: (callbackId := self renderContext callbacks
		store: (JSAjaxCallback on: [ self processCallback ]))
]

{ #category : #'callbacks - scripts' }
DojoAjaxRequest >> errorScript: errorScriptBlock [ 

	| script |
	script := String streamContents: [: stream | self script: [: s | errorScriptBlock value: s value: ( JSStream on: 'String(error)' )] on: stream ].
	self onError: ( script asFunction: #( #error #io )).
]

{ #category : #options }
DojoAjaxRequest >> failOk: aBoolean [
	" By default, dojo.xhrGet outputs an error to the console when there is a transport error.
	Setting failOk to true will prevent that behavior and will suppress the error message."

	self optionAt: 'failOk' put: aBoolean
]

{ #category : #options }
DojoAjaxRequest >> handleAs: type [
	" Original documentation:
		This parameter specifies how to handle the data returned from the server. It usually takes values of 'text', 'xml', or 'json'
	Note:
		'javascript' is supported, too "

	self options at: 'handleAs' put: type
]

{ #category : #options }
DojoAjaxRequest >> handleAsJSON [

	self handleAs: 'json'
]

{ #category : #options }
DojoAjaxRequest >> handleAsJavascript [

	self handleAs: 'javascript'
]

{ #category : #options }
DojoAjaxRequest >> handleAsText [

	self handleAs: 'text'
]

{ #category : #options }
DojoAjaxRequest >> handleAsXML [

	self handleAs: 'xml'
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> hasCallback [
	^ callbackId notNil
]

{ #category : #options }
DojoAjaxRequest >> headers: aDictionary [
	" These are the headers to send as part of the request "

	self options at: 'headers' put: aDictionary
]

{ #category : #'callbacks - rendering' }
DojoAjaxRequest >> html: aRenderable [ 
	"Defines a html rendering callback. The nodes will be replace with the contents returned by the request "

	self render: aRenderable applyResponseWith: #innerHTML.
]

{ #category : #'callbacks - multi node rendering' }
DojoAjaxRequest >> html: aRenderable nodeId: nodeId [ 
	" register an object to render "

	self objectsToRender at: nodeId put: aRenderable.
	callback isNil 
		ifTrue: [ self renderRegisteredNodes ].
]

{ #category : #accessing }
DojoAjaxRequest >> method [

	self subclassResponsibility
]

{ #category : #private }
DojoAjaxRequest >> nodeListQuery [
	" convert DOM queries into nodelist queries "

	^ self query ifNotNil: [ : q | q asNodeListQuery ]
]

{ #category : #private }
DojoAjaxRequest >> objectsToRender [

	objectsToRender isNil ifTrue: [ objectsToRender := GRSmallDictionary new ].
	^ objectsToRender
]

{ #category : #'options - response handling' }
DojoAjaxRequest >> onError: anObject [
	" The error parameter is another callback function that is only invoked when an error occurs "

	self optionAt: 'error' put: anObject asFunction
]

{ #category : #'options - response handling' }
DojoAjaxRequest >> onHandle: anObject [
	" Sometimes you want to do something regardless of whether a call completes or fails. Thats where handle comes it, it will be invoked by xhr regardless "

	self optionAt: 'handle' put: anObject asFunction
]

{ #category : #'options - response handling' }
DojoAjaxRequest >> onLoad: anObject [
	" The function dojo should invoke when the data is returned from the server. "

	self optionAt: 'load' put: anObject asFunction
]

{ #category : #'options - private' }
DojoAjaxRequest >> optionAt: aKey put: aValue [
	^ self options at: aKey put: aValue
]

{ #category : #'options - private' }
DojoAjaxRequest >> options [
	^ options ifNil: [ options := GRSmallDictionary new ]
]

{ #category : #private }
DojoAjaxRequest >> owner [

	^ owner
]

{ #category : #private }
DojoAjaxRequest >> owner: aOwner [ 

	owner := aOwner.
]

{ #category : #parameters }
DojoAjaxRequest >> parameters [
	"Answer the request parameters of the reciever."
	
	^ self content
]

{ #category : #options }
DojoAjaxRequest >> preventCache: aBoolean [
	" A boolean value that tells dojo to append a unique query parameter to each request "

	self optionAt: 'preventCache' put: aBoolean
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> processCallback [
	callback isNil
		ifFalse: [ callback value ]
]

{ #category : #accessing }
DojoAjaxRequest >> query [

	^ query
]

{ #category : #accessing }
DojoAjaxRequest >> query: aQuery [ 

	query := aQuery.
]

{ #category : #'callbacks - rendering' }
DojoAjaxRequest >> render: aRenderable applyResponseWith: aNodeListFunction [ 
	"Defines a html rendering callback.
	The nodes will be modified by applying the function to the contents returned by the request. "

	self render: aRenderable errorScript: nil applyResponseWith: aNodeListFunction.
]

{ #category : #'callbacks - rendering' }
DojoAjaxRequest >> render: aRenderable errorScript: errorScriptBlock applyResponseWith: aNodeListFunction [ 
	"Defines a html rendering callback.
	The nodes will be modified by applying the function to the contents returned by the request.
	If an error occurs, the error script will be evaluated (with 'error' and 'io' as arguments). "

	self require: self packageNodeListManipulate.
	self require: self packageParser.
	self handleAsText.
	self onLoad: ( self applyHtmlResponseWith: aNodeListFunction ).
	errorScriptBlock notNil 
		ifTrue: [ self errorScript: errorScriptBlock ].
	self respond: 
		[: response |
			response doNotCache;
				contentType: self application contentType.
			self render: aRenderable on: response stream
		].
]

{ #category : #utilities }
DojoAjaxRequest >> render: aRenderable on: aStream [ 
	"Render aRenderable on aStream."

	| document scriptGenerator |
	document := WAHtmlDocument on: aStream codec: self requestContext codec.
	scriptGenerator := DojoScriptGenerator new .
	document scriptGenerator: scriptGenerator.
	self renderContext 
		document: document
		during: 
		[	
			( self rendererClass context: self renderContext )
				render: aRenderable;
				flush
		].
	document scriptGenerator closeOn: document.
]

{ #category : #'callbacks - multi node rendering' }
DojoAjaxRequest >> renderRegisteredNodes [
	" prepare to render all registered objects and replace the nodes in the DOM with the new content "

	self require: self packageNodeListManipulate.
	self require: self packageParser.
	self handleAsJSON.
	self respond: [: response | self respondMultiNodeRendering: response ].
	self onLoad: ( self applyMultiNodeHtmlResponseWith: #innerHTML ).
]

{ #category : #private }
DojoAjaxRequest >> requestObjectsToRender [
	" all objects to render, including those that where added by callbacks "

	^ self requestContext properties at: #dojoObjectsToRender ifAbsentPut: [ self objectsToRender copy ]
]

{ #category : #callbacks }
DojoAjaxRequest >> respond: aBlock [
	"Defines a response callback."

	self callback: [ self requestContext respond: aBlock ]
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> respondMultiNodeRendering: response [ 
	" collect renderable objects and the corresponding DOM IDs  "

	| htmlFragment |
	htmlFragment := nil.
	response doNotCache;
		contentType: ( WAMimeType textJavascript charset: self requestContext handler charSet ).
	" write JSON array with id + html string "
	response stream nextPutAll: '['.
	self requestObjectsToRender keysAndValuesDo: 
		[: id : renderable |
			htmlFragment notNil 
				ifTrue: 
				[	response stream nextPutAll: ', '.
					htmlFragment := nil
				].
			response stream nextPutAll: '{node: "'; nextPutAll: id; nextPutAll: '", html: '.
			htmlFragment := String streamContents: [: stream | self render: renderable on: stream ].
			response stream nextPutAll: htmlFragment asJson.
			response stream nextPutAll: '}'
		].
	response stream nextPutAll: ']'.
]

{ #category : #'callbacks - scripts' }
DojoAjaxRequest >> script: aBlock [
	"Defines a script rendering callback "

	self script: aBlock errorScript: nil
]

{ #category : #'callbacks - scripts' }
DojoAjaxRequest >> script: aBlock errorScript: errorScriptBlock [
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

{ #category : #utilities }
DojoAjaxRequest >> script: aBlock on: aStream [ 
	"Evaluate aBlock and pass in a script object that is subsequently written to aStream."

	| script document |
	document := WAHtmlDocument on: aStream codec: self requestContext codec.
	document scriptGenerator: DojoScriptGenerator new.
	self renderContext 
		document: document
		during: 
		[	script := ( JSScript context: self renderContext )
					rendererClass: self rendererClass;
					yourself.
			aBlock value: script.
			script addAll: document loadScripts
		].
	script javascriptOn: aStream.
]

{ #category : #callbacks }
DojoAjaxRequest >> secondaryCallback: aBlock [ 
	"Register aBlock as a secondary callback. "

	self callback: aBlock value: '0'
]

{ #category : #options }
DojoAjaxRequest >> sync: aBoolean [
	" A boolean value that says whether or not the xhr function should block until data is returned or return immediately and rely on callbacks for data handling"

	self optionAt: 'sync' put: aBoolean
]

{ #category : #options }
DojoAjaxRequest >> timeout: aNumber [
	" Number of milliseconds to wait until timing out the request. Default is 0 which means infinite (no timeout). "

	self optionAt: 'timeout' put: aNumber
]

{ #category : #options }
DojoAjaxRequest >> url [
	^ self options at: 'url' ifAbsentPut: [ WAUrl new ]
]

{ #category : #options }
DojoAjaxRequest >> url: aUrl [
	"A string containing the URL to which the request is sent."
	
	self optionAt: 'url' put: aUrl
]

{ #category : #'callbacks - private' }
DojoAjaxRequest >> wrappedCallbackBlock: aBlock [
	" wrap block to handle render notifications"
	
	| fixedCallbackBlock |
	fixedCallbackBlock := aBlock fixCallbackTemps .
	^ aBlock numArgs = 1 ifTrue: [ 
		 [ : arg |
			[	
				fixedCallbackBlock value: arg
			] on: DojoRenderNotification do: [ : notification |
				self requestObjectsToRender at: notification nodeId put: notification renderable .
				notification resume
			].
		]
	] ifFalse: [
		 [ 
			[	
				fixedCallbackBlock value
			] on: DojoRenderNotification do: [ : notification |
				self requestObjectsToRender at: notification nodeId put: notification renderable .
				notification resume
			].
		]
	]
]
