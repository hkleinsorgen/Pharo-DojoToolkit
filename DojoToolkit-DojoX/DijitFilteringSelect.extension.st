Extension { #name : #DijitFilteringSelect }

{ #category : '*DojoToolkit-DojoX' }
DijitFilteringSelect >> autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute [ 
	" the block receives a search pattern and should return autocomplete strings."

	| store |
	store := self dojo new dataQueryReadStore.
	store autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute .
	store useGet.
	self searchAttr: searchAttribute .
	self store: store.
]
