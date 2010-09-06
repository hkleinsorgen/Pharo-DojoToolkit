Extension { #name : #DojoCallbackTranslator }

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> argumentTranslator [
	"  returns the first argument as string (#argument) "
	<registered>

	^ self registeredTranslatorAt: #argumentTranslator ifAbsentPut: [ DojoCallbackTranslator specifications: #( #( #value #string 0 nil ))].
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> classMethodsChanged [

	RegisteredTranslators := nil
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> jsonConverter [
	" a class that supports unamrshaling JSON strings - must understand #readFrom: "

	^ jsonConverter
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> jsonConverter: aConverter [
	" a class that supports unamrshaling JSON strings - must understand #readFrom: "

	jsonConverter := aConverter
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registeredTranslatorAt: aName ifAbsentPut: translatorBlock [
	" returns a registered translator. "

	^ self registeredTranslators at: aName ifAbsentPut: translatorBlock
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registeredTranslators [
	" Dictionary of associations name -> translator "
	
	RegisteredTranslators isNil ifTrue: [ RegisteredTranslators := Dictionary new ].
	^ RegisteredTranslators
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> registryPragmas [
	<pragmas: #class>

	^ #(registered)
]

{ #category : '*DojoToolkit-Core' }
DojoCallbackTranslator classSide >> specifications: anArray [ 

	^ ( self new ) specifications: anArray;
		yourself
]
