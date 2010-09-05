Extension { #name : #WATagBrush }

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoConfiguration: configurationBlock [ 
	" add configuration attributes from a configured Dojo object.
	Avoids having to define accessors for all properties at tag level  "

	| dojoType dojoClass dojoObject |
	dojoType := self attributes at: 'dojoType' ifAbsent: [ nil ].
	dojoType isNil 
		ifTrue: [ DojoError signal: 'Tag has no Dojo type' ].
	" that's quite ineffecient "
	dojoClass := DojoConstructableObject allSubclasses 
			detect: [: subclass | subclass functionName = dojoType ]
			ifNone: [ DojoError signal: 'Unknown Dojo type: ' , dojoType printString ].
	dojoObject := dojoClass new.
	configurationBlock value: dojoObject.
	dojoObject properties 
		keysAndValuesDo: [: propertyKey : propertyValue | self attributes at: propertyKey greaseString put: propertyValue dojoMarkupValue ].
]

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoType: aDojoClass [ 
	" Used for declarative markup. Adds the necessary attributes. "

	| type dojo |
	dojo := canvas dojo.
	dojo dojoConfiguration parseOnLoad: true.
	type := aDojoClass functionName.
	dojo require: type.
	self attributes at: 'dojoType' put: type.
]

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoType: aDojoClass configuration: configurationBlock [
	" Used for declarative markup. Adds the necessary attributes.
	If a configurationBlock is specified, it will receive an instance of the dojo class,
	allowing to configure the widget "

	| type dojo dojoObject |
	dojo := canvas dojo.
	dojo dojoConfiguration parseOnLoad: true.
	type := aDojoClass functionName.
	dojo require: type.
	self attributes at: 'dojoType' put: type.
	configurationBlock notNil ifTrue: [ 
		dojoObject := aDojoClass new.
		configurationBlock value: dojoObject.
		dojoObject properties keysAndValuesDo: [ : propertyKey  : propertyValue |
			self attributes at: propertyKey greaseString put: propertyValue greaseString
		].
	].
]
