"
An enhanced version of the HTML SELECT tag, populated dynamically. It works very nicely with very large data sets because it can load and page data as needed. It also resembles ComboBox, but does not allow values outside of the provided ones. If OPTION tags are used as the data provider via markup, then the OPTION tag's child text node is used as the displayed value when selected while the OPTION tag's value attribute is used as the widget value on form submit. To set the default value when using OPTION tags, specify the selected attribute on 1 of the child OPTION tags. Similar features: - There is a drop down list of possible values. - You can only enter a value from the drop down list. (You can't enter an arbitrary value.) - The value submitted with the form is the hidden value (ex: CA), not the displayed value a.k.a. label (ex: California) Enhancements over plain HTML version: - If you type in some text then it will filter down the list of possible values in the drop down list. - List can be specified either as a static list or via a javascript function (that can get the list from a server)
"
Class {
	#name : #DijitFilteringSelect,
	#superclass : #DijitMappedTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitFilteringSelect class >> functionName [

	^ 'dijit.form.FilteringSelect'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> autoComplete [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self access: 'autoComplete'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> autoComplete: aBoolean [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self propertyAt: 'autoComplete' put: aBoolean
]

{ #category : #convenience }
DijitFilteringSelect >> autocompleteData: autocompleteBlock [ 

	self autocompleteData: autocompleteBlock searchAttribute: DojoStore defaultSearchAttributeName
]

{ #category : #convenience }
DijitFilteringSelect >> autocompleteData: autocompleteBlock searchAttribute: searchAttribute [ 
	" the block should return autocomplete strings. "

	| store |
	store := self dojo new itemFileReadStore.
	store autocompleteData: autocompleteBlock searchAttribute: searchAttribute .
	self searchAttr: searchAttribute .
	self store: store.
]

{ #category : #callbacks }
DijitFilteringSelect >> callback: aBlock [ 

	self name: ( self storeCallback: ( WAValueCallback on: aBlock )).
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> comboNode [
	
	self access: 'comboNode'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> comboNode: aJsObject [
	
	self propertyAt: 'comboNode' put: aJsObject
]

{ #category : #'functions-generated' }
DijitFilteringSelect >> compositionend: evt [ 
	"  When inputting characters using an input method, such as Asian languages, it will generate this event instead of onKeyDown event.
	Note: this event is only triggered in FF (not in IE/safari) "

	self call: 'compositionend' withArguments: (Array with: evt)
]

{ #category : #'functions-generated' }
DijitFilteringSelect >> doHighlight: label find: find [ 
	"  Highlights the string entered by the user in the menu.
	By default this highlights the first occurence found.
	Override this method to implement your custom highlighing. "

	self call: 'doHighlight' withArguments: (Array with: label with: find)
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> fetchProperties [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self access: 'fetchProperties'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> fetchProperties: aJsObject [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self propertyAt: 'fetchProperties' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> hasDownArrow [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self access: 'hasDownArrow'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> hasDownArrow: aBoolean [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self propertyAt: 'hasDownArrow' put: aBoolean
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> highlightMatch [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self access: 'highlightMatch'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> highlightMatch: aString [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self propertyAt: 'highlightMatch' put: aString
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> ignoreCase [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self access: 'ignoreCase'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> ignoreCase: aBoolean [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self propertyAt: 'ignoreCase' put: aBoolean
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> item [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self access: 'item'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> item: aJsObject [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self propertyAt: 'item' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> labelAttr [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self access: 'labelAttr'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> labelAttr: aString [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self propertyAt: 'labelAttr' put: aString
]

{ #category : #'functions-generated' }
DijitFilteringSelect >> labelFunc: item store: store [ 
	"  Computes the label to display based on the dojo.data store item. "

	self call: 'labelFunc' withArguments: (Array with: item with: store)
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> labelType [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self access: 'labelType'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> labelType: aString [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self propertyAt: 'labelType' put: aString
]

{ #category : #'functions-generated' }
DijitFilteringSelect >> open [
	"  Opens the drop down menu.
	TODO: rename to _open. "

	self call: 'open'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> query [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self access: 'query'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> query: aJsObject [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self propertyAt: 'query' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> queryExpr [
	"  This specifies what query ComboBox/FilteringSelect sends to the data store, based on what the user has typed.
	Changing this expression will modify whether the drop down shows only exact matches, a 'starting with' match, etc.
	Use it in conjunction with highlightMatch.
	dojo.data query expression pattern.
	${0} will be substituted for the user text.
	* is used for wildcards.
	${0}* means 'starts with', *${0}* means 'contains', ${0} means 'is' "

	self access: 'queryExpr'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> queryExpr: aString [
	"  This specifies what query ComboBox/FilteringSelect sends to the data store, based on what the user has typed.
	Changing this expression will modify whether the drop down shows only exact matches, a 'starting with' match, etc.
	Use it in conjunction with highlightMatch.
	dojo.data query expression pattern.
	${0} will be substituted for the user text.
	* is used for wildcards.
	${0}* means 'starts with', *${0}* means 'contains', ${0} means 'is' "

	self propertyAt: 'queryExpr' put: aString
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchAttr [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self access: 'searchAttr'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchAttr: aString [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self propertyAt: 'searchAttr' put: aString
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchDelay [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self access: 'searchDelay'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchDelay: aNumber [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self propertyAt: 'searchDelay' put: aNumber
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchTimer [
	
	self access: 'searchTimer'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> searchTimer: aJsObject [
	
	self propertyAt: 'searchTimer' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> store [
	"  Reference to data provider object used by this ComboBox "

	self access: 'store'
]

{ #category : #'properties-generated' }
DijitFilteringSelect >> store: aJsObject [
	"  Reference to data provider object used by this ComboBox "

	self propertyAt: 'store' put: aJsObject
]
