"
Abstract superclass for Dojo classes
"
Class {
	#name : #DojoObject,
	#superclass : #JSObject,
	#instVars : [
		'owner'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoObject class >> context: aRenderContext owner: anObject [ 

	^ ( self context: aRenderContext )
		owner: anObject ;
		yourself
]

{ #category : '*DojoToolkit-Core' }
DojoObject class >> functionName [

	^ self subclassResponsibility
]

{ #category : #private }
DojoObject >> addRequiredPackages [

	self requiredPackages do: [ : packageName |
		self require: packageName
	].
]

{ #category : #accessing }
DojoObject >> arguments [

	^ nil
]

{ #category : #private }
DojoObject >> constructsObjects [

	^ false
]

{ #category : #creation }
DojoObject >> create: aDojoObjectClass [ 

	| newObject |
	newObject := aDojoObjectClass context: self renderContext owner: self.
	newObject rendererClass: self rendererClass.
	newObject initializeObject.
	^ newObject
]

{ #category : #convenience }
DojoObject >> dojo [

	^ ( Dojo context: self renderContext )
		rendererClass: self rendererClass;
		yourself
]

{ #category : #accessing }
DojoObject >> dojoConfiguration [
	" the dojo configuration is a singleton "

	^ self renderContext dojoConfiguration
]

{ #category : #'initialize-release' }
DojoObject >> initializeObject [

	self addRequiredPackages
]

{ #category : #printing }
DojoObject >> javascriptContentOn: aStream [ 

	self ownerPathOn: aStream.
	aStream nextPutAll: self class functionName.
	self arguments notNil 
		ifTrue: [ JSStream encodeArguments: self arguments on: aStream ].
]

{ #category : #creation }
DojoObject >> new [
	" creates a Javascript object with 'new SomeClass(...)' "

	^ self create: DojoConstructor
]

{ #category : #creation }
DojoObject >> new: aClass [	
	" creates a Javascript object with 'new SomeClass(...)' "

	^ self new create: aClass
]

{ #category : #accessing }
DojoObject >> override: functionName with: aFunction [ 
	" to customize Dojo/Dijit, it is sometimes necessary to override functions "

	( self access: functionName ) assign: aFunction asFunction.
]

{ #category : #private }
DojoObject >> owner [

	^ owner
]

{ #category : #private }
DojoObject >> owner: aOwner [ 

	owner := aOwner.
]

{ #category : #printing }
DojoObject >> ownerPathOn: aStream [ 

	self owner notNil 
		ifTrue: 
		[	aStream javascript: self owner;
				nextPut: $.
		].
]

{ #category : #'package system-convencience' }
DojoObject >> packageFx [
	" Adds dojo.fx animation support "

	^ 'dojo.fx'
]

{ #category : #'package system-convencience' }
DojoObject >> packageNodeListFx [
	" Adds dojo.fx animation support to dojo.query() "

	^ 'dojo.NodeList-fx'
]

{ #category : #'package system-convencience' }
DojoObject >> packageNodeListHtml [
	"  Adds a chainable html method to dojo.query() / Nodelist instances for setting/replacing node content "

	^ 'dojo.NodeList-html'
]

{ #category : #'package system-convencience' }
DojoObject >> packageNodeListManipulate [
	" Adds a chainable methods to dojo.query() / Nodelist instances for manipulating HTML and DOM nodes and their properties."

	^ 'dojo.NodeList-manipulate'
]

{ #category : #'package system-convencience' }
DojoObject >> packageNodeListTraverse [
	" Adds a chainable methods to dojo.query() / Nodelist instances for traversing the DOM"

	^ 'dojo.NodeList-traverse'
]

{ #category : #'package system' }
DojoObject >> require: aString [
	"Loads a Dojo module, by name."

	| dojoRequiredPackages |
	dojoRequiredPackages := self renderContext dojoRequiredPackages.
	(dojoRequiredPackages includes: aString)
		ifFalse: [ 
			dojoRequiredPackages add: aString.
			self renderContext document addDojoGlobalScript: (self dojo call: 'require' with: aString)
		].
]

{ #category : #'package system' }
DojoObject >> requiredPackages [
	" names of packages that are automatically added when creating an object of this kind "

	^ #()
]
