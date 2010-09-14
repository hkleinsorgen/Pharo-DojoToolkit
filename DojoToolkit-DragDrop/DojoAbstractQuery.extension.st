Extension { #name : #DojoAbstractQuery }

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndAutoSource [

	^ self create: DojoDndAutoSource
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndAvatar [

	^ self create: DojoDndAvatar
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndContainer [

	^ self create: DojoDndContainer
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndItem [

	^ self create: DojoDndItem
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndManager [

	^ self create: DojoDndManager
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndMoveable [

	^ self create: DojoDndMoveable
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndMover [

	^ self create: DojoDndMover
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndSelector [

	^ self create: DojoDndSelector
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndSource [

	^ self create: DojoDndSource
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndTarget [

	^ self create: DojoDndTarget
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> dndTimedMoveable [

	^ self create: DojoDndTimedMoveable
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> makeMoveable [
	" make the node moveable "

	^ self new dndMoveable node: self nodeId;
		yourself
]

{ #category : '*DojoToolkit-DragDrop' }
DojoAbstractQuery >> makeMoveableWithHandle: handleNode [ 
	" the node is the handle for moving "

	^ self makeMoveable handle: handleNode;
		yourself
]
