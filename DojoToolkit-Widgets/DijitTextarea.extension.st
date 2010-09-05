Extension { #name : #DijitTextarea }

{ #category : '*DojoToolkit-Widgets' }
DijitTextarea classSide >> functionName [

	^ 'dijit.form.Textarea'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTextarea >> resize [
	"  Resizes the textarea vertically (should be called after a style/value change) "

	self call: 'resize'
]
