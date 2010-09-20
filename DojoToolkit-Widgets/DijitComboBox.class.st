"
The drop down box's values are populated from an class called a data provider, which returns a list of values based on the characters that the user has typed into the input box. If OPTION tags are used as the data provider via markup, then the OPTION tag's child text node is used as the widget value when selected. The OPTION tag's value attribute is ignored. To set the default value when using OPTION tags, specify the selected attribute on 1 of the child OPTION tags. Some of the options to the ComboBox are actually arguments to the data provider.
"
Class {
	#name : #DijitComboBox,
	#superclass : #DijitValidationTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitComboBox class >> functionName [

	^ 'dijit.form.ComboBox'
]

{ #category : #'properties-generated' }
DijitComboBox >> autoComplete [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self access: 'autoComplete'
]

{ #category : #'properties-generated' }
DijitComboBox >> autoComplete: aBoolean [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self propertyAt: 'autoComplete' put: aBoolean
]

{ #category : #convenience }
DijitComboBox >> autocompleteData: autocompleteBlock searchAttribute: searchAttribute [ 
	" the block should return autocomplete items. "

	| store |
	store := self dojo new itemFileReadStore.
	store autocompleteData: autocompleteBlock searchAttribute: searchAttribute .
	self searchAttr: searchAttribute .
	self store: store.
]

{ #category : #'properties-generated' }
DijitComboBox >> comboNode [
	
	self access: 'comboNode'
]

{ #category : #'properties-generated' }
DijitComboBox >> comboNode: aJsObject [
	
	self propertyAt: 'comboNode' put: aJsObject
]

{ #category : #'functions-generated' }
DijitComboBox >> compositionend: evt [ 
	"  When inputting characters using an input method, such as Asian languages, it will generate this event instead of onKeyDown event.
	Note: this event is only triggered in FF (not in IE/safari) "

	self call: 'compositionend' withArguments: (Array with: evt)
]

{ #category : #'functions-generated' }
DijitComboBox >> doHighlight: label find: find [ 
	"  Highlights the string entered by the user in the menu.
	By default this highlights the first occurence found.
	Override this method to implement your custom highlighing. "

	self call: 'doHighlight' withArguments: (Array with: label with: find)
]

{ #category : #'properties-generated' }
DijitComboBox >> fetchProperties [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self access: 'fetchProperties'
]

{ #category : #'properties-generated' }
DijitComboBox >> fetchProperties: aJsObject [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self propertyAt: 'fetchProperties' put: aJsObject
]

{ #category : #'properties-generated' }
DijitComboBox >> hasDownArrow [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self access: 'hasDownArrow'
]

{ #category : #'properties-generated' }
DijitComboBox >> hasDownArrow: aBoolean [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self propertyAt: 'hasDownArrow' put: aBoolean
]

{ #category : #'properties-generated' }
DijitComboBox >> highlightMatch [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self access: 'highlightMatch'
]

{ #category : #'properties-generated' }
DijitComboBox >> highlightMatch: aString [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self propertyAt: 'highlightMatch' put: aString
]

{ #category : #'properties-generated' }
DijitComboBox >> ignoreCase [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self access: 'ignoreCase'
]

{ #category : #'properties-generated' }
DijitComboBox >> ignoreCase: aBoolean [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self propertyAt: 'ignoreCase' put: aBoolean
]

{ #category : #'properties-generated' }
DijitComboBox >> item [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self access: 'item'
]

{ #category : #'properties-generated' }
DijitComboBox >> item: aJsObject [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self propertyAt: 'item' put: aJsObject
]

{ #category : #'properties-generated' }
DijitComboBox >> labelAttr [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self access: 'labelAttr'
]

{ #category : #'properties-generated' }
DijitComboBox >> labelAttr: aString [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self propertyAt: 'labelAttr' put: aString
]

{ #category : #'functions-generated' }
DijitComboBox >> labelFunc: item store: store [ 
	"  Computes the label to display based on the dojo.data store item. "

	self call: 'labelFunc' withArguments: (Array with: item with: store)
]

{ #category : #'properties-generated' }
DijitComboBox >> labelType [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self access: 'labelType'
]

{ #category : #'properties-generated' }
DijitComboBox >> labelType: aString [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self propertyAt: 'labelType' put: aString
]

{ #category : #'functions-generated' }
DijitComboBox >> open [
	"  Opens the drop down menu.
	TODO: rename to _open. "

	self call: 'open'
]

{ #category : #'properties-generated' }
DijitComboBox >> query [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self access: 'query'
]

{ #category : #'properties-generated' }
DijitComboBox >> query: aJsObject [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self propertyAt: 'query' put: aJsObject
]

{ #category : #'properties-generated' }
DijitComboBox >> queryExpr [
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
DijitComboBox >> queryExpr: aString [
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
DijitComboBox >> searchAttr [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self access: 'searchAttr'
]

{ #category : #'properties-generated' }
DijitComboBox >> searchAttr: aString [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self propertyAt: 'searchAttr' put: aString
]

{ #category : #'properties-generated' }
DijitComboBox >> searchDelay [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self access: 'searchDelay'
]

{ #category : #'properties-generated' }
DijitComboBox >> searchDelay: aNumber [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self propertyAt: 'searchDelay' put: aNumber
]

{ #category : #'properties-generated' }
DijitComboBox >> searchTimer [
	
	self access: 'searchTimer'
]

{ #category : #'properties-generated' }
DijitComboBox >> searchTimer: aJsObject [
	
	self propertyAt: 'searchTimer' put: aJsObject
]

{ #category : #'properties-generated' }
DijitComboBox >> store [
	"  Reference to data provider object used by this ComboBox "

	self access: 'store'
]

{ #category : #'properties-generated' }
DijitComboBox >> store: aJsObject [
	"  Reference to data provider object used by this ComboBox "

	self propertyAt: 'store' put: aJsObject
]
