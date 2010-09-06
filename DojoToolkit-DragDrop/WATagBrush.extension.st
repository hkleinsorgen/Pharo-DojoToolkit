Extension { #name : #WATagBrush }

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragItem [
	" defined this node as a draggable item "

	self class: 'dojoDndItem'
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragItem: configurationBlock [
	" defined this node as a draggable item "

	self beDojoDragItem.
	self dojoConfigurationFrom: DojoDndItem new
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragItemOfType: type [
	" defined this node as a draggable item with the given type "

	self beDojoDragItem.
	self dojoDragItemType: type.
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragSource [
	" defined this node as a source (and target) for drag/drop operations."

	self dojoType: DojoDndSource.
	self class: 'container'
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragSource: configurationBlock [
	" defined this node as a source (and target) for drag/drop operations."

	self dojoType: DojoDndSource configuration: configurationBlock.
	self class: 'container'
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDragSourceForType: aStringOrArray [
	" defined this node as a source (and target) for drag/drop operations."

	self beDojoDragSource.
	self dojoDropAccept: aStringOrArray.
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDropTarget [
	" defined this node as a target for drag/drop operations "

	self dojoType: DojoDndTarget.
	self class: 'container'
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDropTarget: configurationBlock [
	" defined this node as a target for drag/drop operations "

	self dojoType: DojoDndTarget configuration: configurationBlock.
	self class: 'container'
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> beDojoDropTargetForType: aStringOrArray [
	" defined this node as target for drag/drop operations."

	self beDojoDropTarget.
	self dojoDropAccept: aStringOrArray.
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> dojoDragItemType: aString [
	" defines the type of a draggable item. Useful to restrict drag&drop operations "

	self attributeAt: 'dndType' put: aString
]

{ #category : #'*DojoToolkit-DragDrop' }
WATagBrush >> dojoDropAccept: aStringOrArray [ 
	" defines the acceptable type(s) of a draggable item. Useful to restrict drag&drop operations "

	aStringOrArray isCharacters 
		ifTrue: [ self attributes at: 'accept' append: aStringOrArray separator: ',' ]
		ifFalse: [ aStringOrArray do: [: string | self attributes at: 'accept' append: string separator: ',' ]].
]
