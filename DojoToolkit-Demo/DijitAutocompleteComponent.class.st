Class {
	#name : #DijitAutocompleteComponent,
	#superclass : #DijitDemoPartComponent,
	#instVars : [
		'classNamesCache'
	],
	#category : 'DojoToolkit-Demo'
}

{ #category : #data }
DijitAutocompleteComponent >> autoCompleteStrings [

	^  (WAComponent allSubclasses collect: [ : class | class name asString ]) asSortedCollection
]

{ #category : #data }
DijitAutocompleteComponent >> autoCompleteStringsMatching: aPattern [

	| classNames |
	aPattern size <= 2
		ifTrue: [ ^ #( )].
	classNames := OrderedCollection new.
	" brute-force-match instead of a propert tree/trie, to simplify the implementation "
	self classNamesCache do:
		[: className | 
			( aPattern match: className ) 
				ifTrue: [ classNames add: className asString ]
		].
	^ classNames asSortedCollection
]

{ #category : #private }
DijitAutocompleteComponent >> classNamesCache [

	| metaClasses |
	classNamesCache isNil
		ifTrue: [ 
			metaClasses := Metaclass allInstances.
			classNamesCache := Set new: metaClasses size.
			metaClasses do: [ : metaClass | classNamesCache add: metaClass soleInstance name ].
		].
	^ classNamesCache
]

{ #category : #rendering }
DijitAutocompleteComponent >> renderDemoOn: html [ 

	self title: 'Static' on: html.
	html paragraph: [ html text: 'Enter the name of a subclass of WAComponent' ].
	self renderStaticAutocompleteOn: html.
	html paragraph: [ html text: 'The  autcomplete data is a static list. Only suitable for small lists.' ].
	self title: 'Dynamic' on: html.
	html paragraph: [ html text: 'Enter the name of a class' ].
	self renderDynamicAutocompleteOn: html.
	html paragraph: [ html text: 'The autcomplete data is requested everytime the input changes. In this example, at least two characters must be entered. This example uses a combo box instead of a filtering select widget: The combo box allows to enter arbitrary data.' ].
]

{ #category : #rendering }
DijitAutocompleteComponent >> renderDynamicAutocompleteOn: html [ 

	html dojoComboBox
		name: 'Class';
		dojoConfiguration: [ : comboBox | 
			comboBox autocompleteQuery: [: pattern | 
				self autoCompleteStringsMatching: pattern
			]
		]
]

{ #category : #rendering }
DijitAutocompleteComponent >> renderStaticAutocompleteOn: html [ 

	html dojoFilteringSelect
		name: 'Class';
		dojoConfiguration: [ : filteringSelect | 
			filteringSelect autocompleteData: [ self autoCompleteStrings ]
		]
]

{ #category : #accessing }
DijitAutocompleteComponent >> sourceSelectors [

	^#(renderStaticAutocompleteOn: renderDynamicAutocompleteOn: )
]

{ #category : #accessing }
DijitAutocompleteComponent >> title [

	^ 'Auto-complete'
]

{ #category : #accessing }
DijitAutocompleteComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form/FilteringSelect.html'
]

{ #category : #accessing }
DijitAutocompleteComponent >> widgetClass [

	^ DijitFilteringSelect
]
