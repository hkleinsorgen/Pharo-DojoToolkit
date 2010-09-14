Class {
	#name : #DijitDemoAutocompleteComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #data }
DijitDemoAutocompleteComponent >> autoCompleteData [

	| classNames items data |
	classNames := (WAComponent allSubclasses collect: [ : class | class name asString ]) asSortedCollection.
	items := classNames collect: [ : className | Dictionary new at: 'n' put: className ; yourself ].
	data := Dictionary new.
	data at: 'items' put: items.
	data at: 'identifier' put: 'n'.
	data at: 'label' put: 'n'.
	^ data asJson
]

{ #category : #rendering }
DijitDemoAutocompleteComponent >> renderDemoOn: html [ 

	| id store filteringSelect  |
	id := html nextId.
	store := html dojo new itemFileReadStore.
	store url: ( html urlForDojoAjaxCallback: [ self respondAutoCompleteData ]).
	filteringSelect  := (html dojoUI byId: id) new filteringSelect.
	filteringSelect 
		id: id;
		name: 'Seaside class';
		value: '';
		store: store;
		searchAttr: 'n'.
	html textInput 
		id: id;
		script: filteringSelect .
]

{ #category : #rendering }
DijitDemoAutocompleteComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html text: 'Enter the name of a subclass of WAComponent'
]

{ #category : #data }
DijitDemoAutocompleteComponent >> respondAutoCompleteData [

	self requestContext respond: [: response | response document: self autoCompleteData mimeType: WAMimeType textJavascript ].
]

{ #category : #accessing }
DijitDemoAutocompleteComponent >> title [

	^ 'Auto-complete'
]

{ #category : #accessing }
DijitDemoAutocompleteComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form/FilteringSelect.html'
]

{ #category : #accessing }
DijitDemoAutocompleteComponent >> widgetClass [

	^ DijitFilteringSelect
]
