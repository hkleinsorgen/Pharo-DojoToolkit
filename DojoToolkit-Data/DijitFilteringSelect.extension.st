Extension { #name : #DijitFilteringSelect }

{ #category : '*DojoToolkit-Data' }
DijitFilteringSelect >> autocompleteData: autocompleteBlock searchAttribute: searchAttribute [ 
	" the block should return autocomplete strings. "

	| store |
	store := self dojo new itemFileReadStore.
	store autocompleteData: autocompleteBlock searchAttribute: searchAttribute .
	self searchAttr: searchAttribute .
	self store: store.
]
