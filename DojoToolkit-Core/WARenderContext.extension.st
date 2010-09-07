Extension { #name : #WARenderContext }

{ #category : '*DojoToolkit-Core' }
WARenderContext >> dojoConfiguration [
	" the dojo configuration is a singleton "

	^ self properties 
		at: #dojoConfiguration
		ifAbsentPut: 
		[ | config |
			config := DojoConfiguration context: self.
			self document scriptGenerator dojoConfigurationScript: config.
			config
		]
]
