Extension { #name : #WATagBrush }

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoConfiguration: configurationBlock [ 
	" Add configuration attributes from a configured Dojo object.
	Avoids having to define accessors for all properties at tag level  "

	| dojoType dojoClass dojoObject |
	dojoType := self attributes at: 'dojoType' ifAbsent: [ nil ].
	dojoType isNil 
		ifTrue: [ DojoError signal: 'Tag has no Dojo type' ].
	" that's quite ineffecient "
	dojoClass := DojoConstructableObject allSubclasses 
			detect: [: subclass | subclass functionName = dojoType ]
			ifNone: [ DojoError signal: 'Unknown Dojo type: ' , dojoType printString ].
	dojoObject := dojoClass context: canvas context.
	configurationBlock value: dojoObject.
	self dojoConfigurationFrom: dojoObject
]

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoConfigurationFrom: aDojoObject [
	" Add configuration attributes from a configured Dojo object.
	Avoids having to define accessors for all properties at tag level  "

	aDojoObject properties 
		keysAndValuesDo: [: propertyKey : propertyValue | self attributes at: propertyKey greaseString put: propertyValue dojoMarkupValue ].
]

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoType: aDojoClass [ 
	" Used for declarative markup. Adds the necessary attributes. "

	| dojo |
	dojo := canvas dojo.
	dojo dojoConfiguration parseOnLoad: true.
	aDojoClass requiredPackages do: [ : packageName |
		dojo require: packageName
	].
	self attributes at: 'dojoType' put: aDojoClass functionName.
]

{ #category : #'*DojoToolkit-UI' }
WATagBrush >> dojoType: aDojoClass configuration: configurationBlock [
	" Used for declarative markup. Adds the necessary attributes. "

	| dojoObject |
	self dojoType: aDojoClass .
	dojoObject := aDojoClass new.
	configurationBlock  value: dojoObject.
	self dojoConfigurationFrom: dojoObject.
]
