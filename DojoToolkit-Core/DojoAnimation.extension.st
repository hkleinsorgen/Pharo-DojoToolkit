Extension { #name : #DojoAnimation }

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> beforeBegin [
	"  Synthetic event fired before a dojo.Animation begins playing (synchronous) "

	self access: 'beforeBegin'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> beforeBegin: aJsObject [
	"  Synthetic event fired before a dojo.Animation begins playing (synchronous) "

	self propertyAt: 'beforeBegin' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> curve [
	"  A two element array of start and end values, or a dojo._Line instance to be used in the Animation. "

	self access: 'curve'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> curve: aJsObject [
	"  A two element array of start and end values, or a dojo._Line instance to be used in the Animation. "

	self propertyAt: 'curve' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> delay [
	"  The time in milliseconds to wait before starting animation after it has been .play()'ed "

	self access: 'delay'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> delay: aNumber [
	"  The time in milliseconds to wait before starting animation after it has been .play()'ed "

	self propertyAt: 'delay' put: aNumber
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> duration [
	"  The time in milliseonds the animation will take to run "

	self access: 'duration'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> duration: aNumber [
	"  The time in milliseonds the animation will take to run "

	self propertyAt: 'duration' put: aNumber
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> easing [
	"  A Function to adjust the acceleration (or deceleration) of the progress across a dojo._Line "

	self call: 'easing'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation classSide >> functionName [

	^ 'dojo.Animation'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> gotoPercent: percent andPlay: andPlay [ 
	"  Sets the progress of the animation. "

	self call: 'gotoPercent' withArguments: (Array with: percent with: andPlay)
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onAnimate [
	"  Synthetic event fired at each interval of a dojo.Animation "

	self access: 'onAnimate'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onAnimate: aJsObject [
	"  Synthetic event fired at each interval of a dojo.Animation "

	self propertyAt: 'onAnimate' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onBegin [
	"  Synthetic event fired as a dojo.Animation begins playing (useful?) "

	self access: 'onBegin'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onBegin: aJsObject [
	"  Synthetic event fired as a dojo.Animation begins playing (useful?) "

	self propertyAt: 'onBegin' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onEnd [
	"  Synthetic event fired after the final frame of a dojo.Animation "

	self access: 'onEnd'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onEnd: aJsObject [
	"  Synthetic event fired after the final frame of a dojo.Animation "

	self propertyAt: 'onEnd' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onPause [
	"  Synthetic event fired when a dojo.Animation is paused "

	self access: 'onPause'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onPause: aJsObject [
	"  Synthetic event fired when a dojo.Animation is paused "

	self propertyAt: 'onPause' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onPlay [
	"  Synthetic event fired any time a dojo.Animation is play()'ed "

	self access: 'onPlay'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onPlay: aJsObject [
	"  Synthetic event fired any time a dojo.Animation is play()'ed "

	self propertyAt: 'onPlay' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onStop [
	"  Synthetic event fires when a dojo.Animation is stopped "

	self access: 'onStop'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> onStop: aJsObject [
	"  Synthetic event fires when a dojo.Animation is stopped "

	self propertyAt: 'onStop' put: aJsObject
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> pause [
	"  Pauses a running animation. "

	self call: 'pause'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> play [

	self call: 'play'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> play: delay gotoStart: gotoStart [ 
	"  Start the animation. "

	self call: 'play' withArguments: (Array with: delay with: gotoStart)
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> rate [
	"  the time in milliseconds to wait before advancing to next frame (used as a fps timer: 1000/rate = fps) "

	self access: 'rate'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> rate: aNumber [
	"  the time in milliseconds to wait before advancing to next frame (used as a fps timer: 1000/rate = fps) "

	self propertyAt: 'rate' put: aNumber
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> repeat [
	"  The number of times to loop the animation "

	self access: 'repeat'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> repeat: aNumber [
	"  The number of times to loop the animation "

	self propertyAt: 'repeat' put: aNumber
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> requiredPackages [

	^ #()
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> status [
	"  Returns a string token representation of the status of the animation, one of: 'paused', 'playing', 'stopped' "

	self call: 'status'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> stop [

	self call: 'stop'
]

{ #category : '*DojoToolkit-Core' }
DojoAnimation >> stop: gotoEnd [ 
	"  Stops a running animation. "

	self call: 'stop' withArguments: (Array with: gotoEnd)
]
