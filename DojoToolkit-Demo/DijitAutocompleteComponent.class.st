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
	aPattern size <= 3
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
	html paragraph: [ html text: 'The  autcomplete data is a static list. Only suitable for small lists' ].
	self title: 'Dynamic' on: html.
	html paragraph: [ html text: 'Enter the name of a class' ].
	self renderDynamicAutocompleteOn: html.
	html paragraph: [ html text: 'The autcomplete data is requested everytime the input changes. In this example, at least three characters must be entered' ].
]

{ #category : #rendering }
DijitAutocompleteComponent >> renderDynamicAutocompleteOn: html [ 

	| id filteringSelect |
	id := html nextId.
	filteringSelect := ( html dojoUI byId: id ) new filteringSelect.
	filteringSelect
		id: id;
		name: 'Seaside class';
		value: ''.
	filteringSelect 
		autocompleteQuery: [ : pattern | self autoCompleteStringsMatching: pattern ] 
		searchAttribute: self searchAttributeName .
	html textInput id: id;
		script: filteringSelect.
]

{ #category : #rendering }
DijitAutocompleteComponent >> renderStaticAutocompleteOn: html [ 

	| id filteringSelect |
	id := html nextId.
	filteringSelect := ( html dojoUI byId: id ) new filteringSelect.
	filteringSelect
		id: id;
		name: 'Seaside class';
		value: ''.
	filteringSelect 
		autocompleteData: [ self autoCompleteStrings ] 
		searchAttribute: self searchAttributeName .
	html textInput id: id;
		script: filteringSelect.
]

{ #category : #data }
DijitAutocompleteComponent >> searchAttributeName [

	^ 'n'
]

{ #category : #rendering }
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
