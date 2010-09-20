"
useful if you send ContentPane a complete page, instead of a html fragment scans for title Node, remove DOCTYPE tag, remove
"
Class {
	#name : #DojoxContentPane,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-DojoX'
}

{ #category : #'accessing-generated' }
DojoxContentPane class >> functionName [

	^ 'dojox.layout.ContentPane'
]

{ #category : #'properties-generated' }
DojoxContentPane >> adjustPaths [
	"  Adjust relative paths in html string content to point to this page.
	Only useful if you grab content from a another folder then the current one "

	self access: 'adjustPaths'
]

{ #category : #'properties-generated' }
DojoxContentPane >> adjustPaths: aBoolean [
	"  Adjust relative paths in html string content to point to this page.
	Only useful if you grab content from a another folder then the current one "

	self propertyAt: 'adjustPaths' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxContentPane >> cleanContent [
	
	self access: 'cleanContent'
]

{ #category : #'properties-generated' }
DojoxContentPane >> cleanContent: aBoolean [
	
	self propertyAt: 'cleanContent' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxContentPane >> executeScripts [
	"  Execute (eval) scripts that is found in the content "

	self access: 'executeScripts'
]

{ #category : #'properties-generated' }
DojoxContentPane >> executeScripts: aBoolean [
	"  Execute (eval) scripts that is found in the content "

	self propertyAt: 'executeScripts' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxContentPane >> ioMethod [
	"  reference to the method that should grab the content "

	self access: 'ioMethod'
]

{ #category : #'properties-generated' }
DojoxContentPane >> ioMethod: aJsObject [
	"  reference to the method that should grab the content "

	self propertyAt: 'ioMethod' put: aJsObject
]

{ #category : #'events-generated' }
DojoxContentPane >> onExecError: e [
	"  event callback, called on script error or on java handler error overide and return your own html string if you want a some text displayed within the ContentPane "

	self eventAt: 'onExecError' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DojoxContentPane >> renderStyles [
	"  trigger/load styles in the content "

	self access: 'renderStyles'
]

{ #category : #'properties-generated' }
DojoxContentPane >> renderStyles: aBoolean [
	"  trigger/load styles in the content "

	self propertyAt: 'renderStyles' put: aBoolean
]

{ #category : #'properties-generated' }
DojoxContentPane >> scriptHasHooks [
	"  replace keyword '_container_' in scripts with 'dijit.byId(this.id)' NOTE this name might change in the near future "

	self access: 'scriptHasHooks'
]

{ #category : #'properties-generated' }
DojoxContentPane >> scriptHasHooks: aBoolean [
	"  replace keyword '_container_' in scripts with 'dijit.byId(this.id)' NOTE this name might change in the near future "

	self propertyAt: 'scriptHasHooks' put: aBoolean
]
