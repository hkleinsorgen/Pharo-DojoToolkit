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

{ #category : '*DojoToolkit-Core' }
WARenderContext >> urlForDojoAjaxCallback: aBlock [ 
	"Answer an action URL that will evaluate aBlock when it is requested."

	^ self actionUrl withField: ( self callbacks store: ( JSAjaxCallback on: aBlock ))
]
