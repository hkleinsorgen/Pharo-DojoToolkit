Extension { #name : #DijitComboBox }

{ #category : '*DojoToolkit-Data' }
DijitComboBox >> autocompleteData: autocompleteBlock searchAttribute: searchAttribute [ 
	" the block should return autocomplete items. "

	| store |
	store := self dojo new itemFileReadStore.
	store autocompleteData: autocompleteBlock searchAttribute: searchAttribute .
	self searchAttr: searchAttribute .
	self store: store.
]
