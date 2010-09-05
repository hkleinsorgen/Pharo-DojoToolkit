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

{ #category : '*DojoToolkit-Core' }
DojoObject >> addRequiredPackages [

	self requiredPackages do: [ : packageName |
		self require: packageName
	].
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> arguments [

	^ nil
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> constructsObjects [

	^ false
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> create: aDojoObjectClass [ 

	| newObject |
	newObject := aDojoObjectClass context: self renderContext owner: self.
	newObject rendererClass: self rendererClass.
	newObject initializeObject.
	^ newObject
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> dojo [

	^ ( Dojo context: self renderContext )
		rendererClass: self rendererClass;
		yourself
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> dojoConfiguration [
	" the dojo configuration is a singleton "

	^ self renderContext dojoConfiguration
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> initializeObject [

	self addRequiredPackages
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> javascriptContentOn: aStream [ 

	self ownerPathOn: aStream.
	aStream nextPutAll: self class functionName.
	self arguments notNil 
		ifTrue: [ JSStream encodeArguments: self arguments on: aStream ].
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> new [
	" creates a Javascript object with 'new SomeClass(...)' "

	^ self create: DojoConstructor
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> new: aClass [	
	" creates a Javascript object with 'new SomeClass(...)' "

	^ self new create: aClass
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> override: functionName with: aFunction [ 
	" to customize Dojo/Dijit, it is sometimes necessary to override functions "

	( self access: functionName ) assign: aFunction asFunction.
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> owner [

	^ owner
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> owner: aOwner [ 

	owner := aOwner.
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> ownerPathOn: aStream [ 

	self owner notNil 
		ifTrue: 
		[	aStream javascript: self owner;
				nextPut: $.
		].
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> packageFx [
	" Adds dojo.fx animation support "

	^ 'dojo.fx'
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> packageNodeListFx [
	" Adds dojo.fx animation support to dojo.query() "

	^ 'dojo.NodeList-fx'
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> packageNodeListHtml [
	"  Adds a chainable html method to dojo.query() / Nodelist instances for setting/replacing node content "

	^ 'dojo.NodeList-html'
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> packageNodeListManipulate [
	" Adds a chainable methods to dojo.query() / Nodelist instances for manipulating HTML and DOM nodes and their properties."

	^ 'dojo.NodeList-manipulate'
]

{ #category : '*DojoToolkit-Core' }
DojoObject >> packageNodeListTraverse [
	" Adds a chainable methods to dojo.query() / Nodelist instances for traversing the DOM"

	^ 'dojo.NodeList-traverse'
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
DojoObject >> requiredPackages [
	" names of packages that are automatically added when creating an object of this kind "

	^ #()
]
