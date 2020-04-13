Extension { #name : #DijitFilteringSelect }

{ #category : '*DojoToolkit-DojoX' }
DijitFilteringSelect >> autocompleteQuery: autocompleteQueryBlock [ 

	^ self autocompleteQuery: autocompleteQueryBlock searchAttribute: DojoStore defaultSearchAttributeName
]

{ #category : '*DojoToolkit-DojoX' }
DijitFilteringSelect >> autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute [ 
	" the block receives a search pattern and should return autocomplete strings.
	Note: the search attribute will be used as query field, so don't use 's' or 'k'  "

	| store |
	store := self dojo new dataQueryReadStore.
	store autocompleteQuery: autocompleteQueryBlock searchAttribute: searchAttribute .
	store useGet.
	self searchAttr: searchAttribute .
	self store: store.
]
