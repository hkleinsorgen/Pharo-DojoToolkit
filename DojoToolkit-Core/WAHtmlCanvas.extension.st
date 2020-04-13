Extension { #name : #WAHtmlCanvas }

{ #category : #'*DojoToolkit-Core' }
WAHtmlCanvas >> dojoAjaxForm [
	" a <form> tag for forms that are submitted with Ajax post requests "

	^ self brush: DojoAjaxFormTag new
]
