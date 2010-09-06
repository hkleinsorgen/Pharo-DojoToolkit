Extension { #name : #DojoNodeQuery }

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndAutoSource [

	^ self create: DojoDndAutoSource
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndAvatar [

	^ self create: DojoDndAvatar
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndContainer [

	^ self create: DojoDndContainer
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndItem [

	^ self create: DojoDndItem
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndManager [

	^ self create: DojoDndManager
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndMoveable [

	^ self create: DojoDndMoveable
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndMover [

	^ self create: DojoDndMover
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndSelector [

	^ self create: DojoDndSelector
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndSource [

	^ self create: DojoDndSource
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndTarget [

	^ self create: DojoDndTarget
]

{ #category : '*DojoToolkit-DragDrop' }
DojoNodeQuery >> dndTimedMoveable [

	^ self create: DojoDndTimedMoveable
]
