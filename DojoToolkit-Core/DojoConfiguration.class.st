Class {
	#name : #DojoConfiguration,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoConfiguration class >> functionName [

	^ ''
]

{ #category : #'properties-generated' }
DojoConfiguration >> baseUrl [
	
	self access: 'baseUrl'
]

{ #category : #'properties-generated' }
DojoConfiguration >> baseUrl: aJsObject [
	
	self propertyAt: 'baseUrl' put: aJsObject
]

{ #category : #initialization }
DojoConfiguration >> createNewObject [
	" the configuration is defined by a special variable "
]

{ #category : #'properties-generated' }
DojoConfiguration >> debugAtAllCosts [
	
	self access: 'debugAtAllCosts'
]

{ #category : #'properties-generated' }
DojoConfiguration >> debugAtAllCosts: aJsObject [
	
	self propertyAt: 'debugAtAllCosts' put: aJsObject
]

{ #category : #initialization }
DojoConfiguration >> initialize [
	" the configuration is defined by a special variable "

	super initialize.
	self assignLocalTo: 'djConfig'.
]

{ #category : #'properties-generated' }
DojoConfiguration >> isDebug [
	
	self access: 'isDebug'
]

{ #category : #'properties-generated' }
DojoConfiguration >> isDebug: aJsObject [
	
	self propertyAt: 'isDebug' put: aJsObject
]

{ #category : #printing }
DojoConfiguration >> javascriptContentOn: aStream [ 

	self properties javascriptOn: aStream
]

{ #category : #properties }
DojoConfiguration >> parseOnLoad: aBoolean [
	"  run the parser when the page loads "

	self require: 'dojo.parser'.
	self propertyAt: 'parseOnLoad' put: aBoolean
]

{ #category : #'properties-generated' }
DojoConfiguration >> preloadImages [
	"  An optional array of urls to preload immediately upon page load.
	Uses dojox.image, and is unused if not present. "

	self access: 'preloadImages'
]

{ #category : #'properties-generated' }
DojoConfiguration >> preloadImages: anArray [
	"  An optional array of urls to preload immediately upon page load.
	Uses dojox.image, and is unused if not present. "

	self propertyAt: 'preloadImages' put: anArray
]

{ #category : #'properties-generated' }
DojoConfiguration >> urchin [
	"  Used by dojox.analytics.Urchin as the default UA-123456-7 account number used when being created.
	Alternately, you can pass an acct:'' parameter to the constructor a la: new dojox.analytics.Urchin({ acct:'UA-123456-7' }); "

	self access: 'urchin'
]

{ #category : #'properties-generated' }
DojoConfiguration >> urchin: aString [
	"  Used by dojox.analytics.Urchin as the default UA-123456-7 account number used when being created.
	Alternately, you can pass an acct:'' parameter to the constructor a la: new dojox.analytics.Urchin({ acct:'UA-123456-7' }); "

	self propertyAt: 'urchin' put: aString
]
