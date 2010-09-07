Extension { #name : #WAHtmlDocument }

{ #category : #'*DojoToolkit-Core' }
WAHtmlDocument >> addDojoGlobalScript: anObject [

	^ self scriptGenerator addDojoGlobalScript: anObject
]

{ #category : #'*DojoToolkit-Core' }
WAHtmlDocument >> addDojoRequiredPackage: aPackageName [

	^ self scriptGenerator addDojoRequiredPackage: aPackageName
]
