Class {
	#name : #DojoDemoDragAndDropComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoDemoDragAndDropComponent >> renderDemoOn: html [

	html div 
		with: [
			html heading level3; with: 'Drop cool things here'.
			html orderedList 
				beDojoDragSourceForType: #('tool' 'language')
	].
	html heading level3; with: 'Programming languages'.
	html orderedList 
		beDojoDragSourceForType: 'language';
		with: [
			#( 'Smalltalk' 'JavaScript' 'Java' ) do: [ : language|
				html listItem 
					beDojoDragItemOfType: 'language';
					with: language.
			].
		].
	html heading level3; with: 'Tools'.
	html orderedList 
		beDojoDragSourceForType: 'tool';
		with: [
			#( 'Swiss army knife' 'Duct tape' 'Paper clip') do: [ : language|
				html listItem 
					beDojoDragItemOfType: 'tool';
					with: language.
			].
		].
]

{ #category : #rendering }
DojoDemoDragAndDropComponent >> renderExplanationOn: html [

	super renderExplanationOn: html.
	html text: 'You can reorder items or move them to other containers. Container and item types restrict the possible drop operations.'.
]

{ #category : #accessing }
DojoDemoDragAndDropComponent >> title [

	^ 'Drag and drop'
]
