Extension { #name : #DojoCallbackTranslator }

{ #category : '*DojoToolkit-Widgets' }
DojoCallbackTranslator classSide >> treeChildrenChangedTranslator [
	<registered>

	^ self translatorNamed: #treeChildrenChanged ifAbsentPut: [ 
			DojoCallbackTranslator specifications: #( 
				#( #parent #passenger parent 'id')
				#( #children #passengerArray nil 'dojo.map(newChildrenList, function(item){return item.id})')
				#( #copy #boolean nil 'dojo.dnd.manager().copy')
			)
	].
]

{ #category : '*DojoToolkit-Widgets' }
DojoCallbackTranslator classSide >> treeNodeDropTranslator [
	<registered>

	^ self translatorNamed: #treeNodeDropTranslator ifAbsentPut: [ 
			DojoCallbackTranslator specifications: #( 
				#( #node #passenger nil 'source.getItem(nodes[0].id).data.item.id')
			)
	].
]

{ #category : '*DojoToolkit-Widgets' }
DojoCallbackTranslator classSide >> treeNodeTranslator [
	<registered>

	^ self translatorNamed: #treeNodeTranslator ifAbsentPut: [ 
			DojoCallbackTranslator specifications: #( 
				#( #id #passenger #item 'id' )
				#( #label #string #item 'label')
			)
	].
]
