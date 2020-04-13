Class {
	#name : #DojoRenderNotification,
	#superclass : #GRNotification,
	#instVars : [
		'nodeId',
		'renderable'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #'instance creation' }
DojoRenderNotification class >> nodeId: aNodeId renderable: aRenderable [ 

	^ self new nodeId: aNodeId;
		renderable: aRenderable;
		signal;
		yourself
]

{ #category : #accessing }
DojoRenderNotification >> nodeId [

	^ nodeId
]

{ #category : #accessing }
DojoRenderNotification >> nodeId: aNodeId [ 

	nodeId := aNodeId.
]

{ #category : #accessing }
DojoRenderNotification >> renderable [

	^ renderable
]

{ #category : #accessing }
DojoRenderNotification >> renderable: aRenderable [ 

	renderable := aRenderable.
]
