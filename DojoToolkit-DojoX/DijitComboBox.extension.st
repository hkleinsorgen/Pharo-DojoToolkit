Extension { #name : #DijitComboBox }

{ #category : '*DojoToolkit-DojoX' }
DijitComboBox >> autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute [ 
	" the block receives a search pattern and should return autocomplete items."

	| store |
	store := self dojo new dataQueryReadStore.
	store autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute .
	store useGet.
	self searchAttr: searchAttribute .
	self store: store.
]
