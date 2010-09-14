"
Ajax request with a configurable HTTP method
"
Class {
	#name : #DojoConfigurableAjax,
	#superclass : #DojoAjaxRequest,
	#instVars : [
		'method'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoConfigurableAjax class >> functionName [

	^ 'xhr'
]

{ #category : #accessing }
DojoConfigurableAjax >> arguments [

	^ Array with: self method with: self options
]

{ #category : #accessing }
DojoConfigurableAjax >> delete [

	self method: 'DELETE'
]

{ #category : #accessing }
DojoConfigurableAjax >> get [

	self method: 'GET'
]

{ #category : #accessing }
DojoConfigurableAjax >> method [

	^ method ifNil: [ 'GET' ]
]

{ #category : #accessing }
DojoConfigurableAjax >> method: aString [
	" HTTP method to be used, such as GET, POST, PUT, DELETE. Should be uppercase. "

	method := aString
]

{ #category : #accessing }
DojoConfigurableAjax >> post [

	self method: 'POST'
]

{ #category : #accessing }
DojoConfigurableAjax >> put [

	self method: 'PUT'
]
