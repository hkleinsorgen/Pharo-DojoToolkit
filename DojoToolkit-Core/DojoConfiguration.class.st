Class {
	#name : #DojoConfiguration,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoConfiguration class >> functionName [

	^ ''
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> baseUrl [
	
	self access: 'baseUrl'
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> baseUrl: aJsObject [
	
	self propertyAt: 'baseUrl' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> createNewObject [
	" the configuration is defined by a special variable "
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> debugAtAllCosts [
	
	self access: 'debugAtAllCosts'
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> debugAtAllCosts: aJsObject [
	
	self propertyAt: 'debugAtAllCosts' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> initialize [
	" the configuration is defined by a special variable "

	super initialize.
	self assignLocalTo: 'djConfig'.
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> isDebug [
	
	self access: 'isDebug'
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> isDebug: aJsObject [
	
	self propertyAt: 'isDebug' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> javascriptContentOn: aStream [ 

	self properties javascriptOn: aStream
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> parseOnLoad: aBoolean [
	"  run the parser when the page loads "

	self require: 'dojo.parser'.
	self propertyAt: 'parseOnLoad' put: aBoolean
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> preloadImages [
	"  An optional array of urls to preload immediately upon page load.
	Uses dojox.image, and is unused if not present. "

	self access: 'preloadImages'
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> preloadImages: anArray [
	"  An optional array of urls to preload immediately upon page load.
	Uses dojox.image, and is unused if not present. "

	self propertyAt: 'preloadImages' put: anArray
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> urchin [
	"  Used by dojox.analytics.Urchin as the default UA-123456-7 account number used when being created.
	Alternately, you can pass an acct:'' parameter to the constructor a la: new dojox.analytics.Urchin({ acct:'UA-123456-7' }); "

	self access: 'urchin'
]

{ #category : '*DojoToolkit-Core' }
DojoConfiguration >> urchin: aString [
	"  Used by dojox.analytics.Urchin as the default UA-123456-7 account number used when being created.
	Alternately, you can pass an acct:'' parameter to the constructor a la: new dojox.analytics.Urchin({ acct:'UA-123456-7' }); "

	self propertyAt: 'urchin' put: aString
]
