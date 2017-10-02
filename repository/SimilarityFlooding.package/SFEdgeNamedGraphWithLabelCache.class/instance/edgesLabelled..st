accessing
edgesLabelled: aString
	^ self labelToEdgesDict at: aString ifAbsent: [ #() ]