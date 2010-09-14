Extension { #name : #DojoAbstractQuery }

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataIdentity [

	^ self create: DojoDataIdentity
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataNotification [

	^ self create: DojoDataNotification
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataRead [

	^ self create: DojoDataRead
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataRequest [

	^ self create: DojoDataRequest
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataUtilSimpleFetch [

	^ self create: DojoSimpleFetch
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> dataWrite [

	^ self create: DojoDataWrite
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> itemFileReadStore [

	^ self create: DojoItemFileReadStore
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> itemFileWriteStore [

	^ self create: DojoItemFileWriteStore
]

{ #category : '*DojoToolkit-Data' }
DojoAbstractQuery >> simpleFetch [

	^ self create: DojoSimpleFetch
]
