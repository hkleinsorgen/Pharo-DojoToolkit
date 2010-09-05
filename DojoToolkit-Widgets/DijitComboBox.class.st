"
The drop down box's values are populated from an class called a data provider, which returns a list of values based on the characters that the user has typed into the input box. If OPTION tags are used as the data provider via markup, then the OPTION tag's child text node is used as the widget value when selected. The OPTION tag's value attribute is ignored. To set the default value when using OPTION tags, specify the selected attribute on 1 of the child OPTION tags. Some of the options to the ComboBox are actually arguments to the data provider.
"
Class {
	#name : #DijitComboBox,
	#superclass : #DijitValidationTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox class >> functionName [

	^ 'dijit.form.ComboBox'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> autoComplete [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self access: 'autoComplete'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> autoComplete: aBoolean [
	"  If user types in a partial string, and then tab out of the <input> box, automatically copy the first entry displayed in the drop down list to the <input> field "

	self propertyAt: 'autoComplete' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> comboNode [
	
	self access: 'comboNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> comboNode: aJsObject [
	
	self propertyAt: 'comboNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> compositionend: evt [ 
	"  When inputting characters using an input method, such as Asian languages, it will generate this event instead of onKeyDown event.
	Note: this event is only triggered in FF (not in IE/safari) "

	self call: 'compositionend' withArguments: (Array with: evt)
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> doHighlight: label find: find [ 
	"  Highlights the string entered by the user in the menu.
	By default this highlights the first occurence found.
	Override this method to implement your custom highlighing. "

	self call: 'doHighlight' withArguments: (Array with: label with: find)
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> fetchProperties [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self access: 'fetchProperties'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> fetchProperties: aJsObject [
	"  Mixin to the dojo.data store's fetch.
	For example, to set the sort order of the ComboBox menu, pass: { sort: {attribute:'name',descending: true} } To override the default queryOptions so that deep=false, do: { queryOptions: {ignoreCase: true, deep: false} } "

	self propertyAt: 'fetchProperties' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> hasDownArrow [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self access: 'hasDownArrow'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> hasDownArrow: aBoolean [
	"  Set this textbox to have a down arrow button, to display the drop down list.
	Defaults to true. "

	self propertyAt: 'hasDownArrow' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> highlightMatch [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self access: 'highlightMatch'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> highlightMatch: aString [
	"  One of: 'first', 'all' or 'none'.
	If the ComboBox/FilteringSelect opens with the search results and the searched string can be found, it will be highlighted.
	If set to 'all' then will probably want to change queryExpr parameter to '*${0}*' Highlighting is only performed when labelType is 'text', so as to not interfere with any HTML markup an HTML label might contain. "

	self propertyAt: 'highlightMatch' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> ignoreCase [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self access: 'ignoreCase'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> ignoreCase: aBoolean [
	"  Set true if the ComboBox/FilteringSelect should ignore case when matching possible items "

	self propertyAt: 'ignoreCase' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> item [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self access: 'item'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> item: aJsObject [
	"  This is the item returned by the dojo.data.store implementation that provides the data for this ComboBox, it's the currently selected item. "

	self propertyAt: 'item' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> labelAttr [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self access: 'labelAttr'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> labelAttr: aString [
	"  The entries in the drop down list come from this attribute in the dojo.data items.
	If not specified, the searchAttr attribute is used instead. "

	self propertyAt: 'labelAttr' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> labelFunc: item store: store [ 
	"  Computes the label to display based on the dojo.data store item. "

	self call: 'labelFunc' withArguments: (Array with: item with: store)
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> labelType [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self access: 'labelType'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> labelType: aString [
	"  Specifies how to interpret the labelAttr in the data store items.
	Can be 'html' or 'text'. "

	self propertyAt: 'labelType' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> open [
	"  Opens the drop down menu.
	TODO: rename to _open. "

	self call: 'open'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> query [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self access: 'query'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> query: aJsObject [
	"  A query that can be passed to 'store' to initially filter the items, before doing further filtering based on searchAttr and the key.
	Any reference to the searchAttr is ignored. "

	self propertyAt: 'query' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
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

{ #category : '*DojoToolkit-Widgets' }
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

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchAttr [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self access: 'searchAttr'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchAttr: aString [
	"  Search for items in the data store where this attribute (in the item) matches what the user typed "

	self propertyAt: 'searchAttr' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchDelay [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self access: 'searchDelay'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchDelay: aNumber [
	"  Delay in milliseconds between when user types something and we start searching based on that value "

	self propertyAt: 'searchDelay' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchTimer [
	
	self access: 'searchTimer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> searchTimer: aJsObject [
	
	self propertyAt: 'searchTimer' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> store [
	"  Reference to data provider object used by this ComboBox "

	self access: 'store'
]

{ #category : '*DojoToolkit-Widgets' }
DijitComboBox >> store: aJsObject [
	"  Reference to data provider object used by this ComboBox "

	self propertyAt: 'store' put: aJsObject
]
