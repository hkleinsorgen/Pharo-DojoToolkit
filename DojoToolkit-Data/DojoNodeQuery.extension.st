Extension { #name : #DojoNodeQuery }

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataIdentity [

	^ self create: DojoDataIdentity
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataNotification [

	^ self create: DojoDataNotification
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataRead [

	^ self create: DojoDataRead
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataRequest [

	^ self create: DojoDataRequest
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataUtilSimpleFetch [

	^ self create: DojoSimpleFetch
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> dataWrite [

	^ self create: DojoDataWrite
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> itemFileReadStore [

	^ self create: DojoItemFileReadStore
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> itemFileWriteStore [

	^ self create: DojoItemFileWriteStore
]

{ #category : '*DojoToolkit-Data' }
DojoNodeQuery >> simpleFetch [

	^ self create: DojoSimpleFetch
]
