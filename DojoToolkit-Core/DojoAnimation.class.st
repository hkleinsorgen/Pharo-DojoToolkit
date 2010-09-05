"
To use, simply require dojox.fx.ext-dojo.reverse and a reverse() method will be added to all dojo.Animations. It can be used at any time during the animation. It does not need to be called when it ends. It also reverses the easing - if dojo.fx.easing.quadIn is used, dojo.fx.easing.quadOut will be used when animating backwards.
"
Class {
	#name : #DojoAnimation,
	#superclass : #DojoConstructableObject,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoAnimation class >> functionName [

	^ 'dojo.Animation'
]

{ #category : #'properties-generated' }
DojoAnimation >> beforeBegin [
	"  Synthetic event fired before a dojo.Animation begins playing (synchronous) "

	self access: 'beforeBegin'
]

{ #category : #'properties-generated' }
DojoAnimation >> beforeBegin: aJsObject [
	"  Synthetic event fired before a dojo.Animation begins playing (synchronous) "

	self propertyAt: 'beforeBegin' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> curve [
	"  A two element array of start and end values, or a dojo._Line instance to be used in the Animation. "

	self access: 'curve'
]

{ #category : #'properties-generated' }
DojoAnimation >> curve: aJsObject [
	"  A two element array of start and end values, or a dojo._Line instance to be used in the Animation. "

	self propertyAt: 'curve' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> delay [
	"  The time in milliseconds to wait before starting animation after it has been .play()'ed "

	self access: 'delay'
]

{ #category : #'properties-generated' }
DojoAnimation >> delay: aNumber [
	"  The time in milliseconds to wait before starting animation after it has been .play()'ed "

	self propertyAt: 'delay' put: aNumber
]

{ #category : #'properties-generated' }
DojoAnimation >> duration [
	"  The time in milliseonds the animation will take to run "

	self access: 'duration'
]

{ #category : #'properties-generated' }
DojoAnimation >> duration: aNumber [
	"  The time in milliseonds the animation will take to run "

	self propertyAt: 'duration' put: aNumber
]

{ #category : #'functions-generated' }
DojoAnimation >> easing [
	"  A Function to adjust the acceleration (or deceleration) of the progress across a dojo._Line "

	self call: 'easing'
]

{ #category : #'functions-generated' }
DojoAnimation >> gotoPercent: percent andPlay: andPlay [ 
	"  Sets the progress of the animation. "

	self call: 'gotoPercent' withArguments: (Array with: percent with: andPlay)
]

{ #category : #'properties-generated' }
DojoAnimation >> onAnimate [
	"  Synthetic event fired at each interval of a dojo.Animation "

	self access: 'onAnimate'
]

{ #category : #'properties-generated' }
DojoAnimation >> onAnimate: aJsObject [
	"  Synthetic event fired at each interval of a dojo.Animation "

	self propertyAt: 'onAnimate' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> onBegin [
	"  Synthetic event fired as a dojo.Animation begins playing (useful?) "

	self access: 'onBegin'
]

{ #category : #'properties-generated' }
DojoAnimation >> onBegin: aJsObject [
	"  Synthetic event fired as a dojo.Animation begins playing (useful?) "

	self propertyAt: 'onBegin' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> onEnd [
	"  Synthetic event fired after the final frame of a dojo.Animation "

	self access: 'onEnd'
]

{ #category : #'properties-generated' }
DojoAnimation >> onEnd: aJsObject [
	"  Synthetic event fired after the final frame of a dojo.Animation "

	self propertyAt: 'onEnd' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> onPause [
	"  Synthetic event fired when a dojo.Animation is paused "

	self access: 'onPause'
]

{ #category : #'properties-generated' }
DojoAnimation >> onPause: aJsObject [
	"  Synthetic event fired when a dojo.Animation is paused "

	self propertyAt: 'onPause' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> onPlay [
	"  Synthetic event fired any time a dojo.Animation is play()'ed "

	self access: 'onPlay'
]

{ #category : #'properties-generated' }
DojoAnimation >> onPlay: aJsObject [
	"  Synthetic event fired any time a dojo.Animation is play()'ed "

	self propertyAt: 'onPlay' put: aJsObject
]

{ #category : #'properties-generated' }
DojoAnimation >> onStop [
	"  Synthetic event fires when a dojo.Animation is stopped "

	self access: 'onStop'
]

{ #category : #'properties-generated' }
DojoAnimation >> onStop: aJsObject [
	"  Synthetic event fires when a dojo.Animation is stopped "

	self propertyAt: 'onStop' put: aJsObject
]

{ #category : #'functions-generated' }
DojoAnimation >> pause [
	"  Pauses a running animation. "

	self call: 'pause'
]

{ #category : #functions }
DojoAnimation >> play [

	self call: 'play'
]

{ #category : #'functions-generated' }
DojoAnimation >> play: delay gotoStart: gotoStart [ 
	"  Start the animation. "

	self call: 'play' withArguments: (Array with: delay with: gotoStart)
]

{ #category : #'properties-generated' }
DojoAnimation >> rate [
	"  the time in milliseconds to wait before advancing to next frame (used as a fps timer: 1000/rate = fps) "

	self access: 'rate'
]

{ #category : #'properties-generated' }
DojoAnimation >> rate: aNumber [
	"  the time in milliseconds to wait before advancing to next frame (used as a fps timer: 1000/rate = fps) "

	self propertyAt: 'rate' put: aNumber
]

{ #category : #'properties-generated' }
DojoAnimation >> repeat [
	"  The number of times to loop the animation "

	self access: 'repeat'
]

{ #category : #'properties-generated' }
DojoAnimation >> repeat: aNumber [
	"  The number of times to loop the animation "

	self propertyAt: 'repeat' put: aNumber
]

{ #category : #accessing }
DojoAnimation >> requiredPackages [

	^ #()
]

{ #category : #'functions-generated' }
DojoAnimation >> status [
	"  Returns a string token representation of the status of the animation, one of: 'paused', 'playing', 'stopped' "

	self call: 'status'
]

{ #category : #functions }
DojoAnimation >> stop [

	self call: 'stop'
]

{ #category : #'functions-generated' }
DojoAnimation >> stop: gotoEnd [ 
	"  Stops a running animation. "

	self call: 'stop' withArguments: (Array with: gotoEnd)
]
