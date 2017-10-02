accessing
edgesLabelled: aString
	^ self edges select: [ :e | e name = aString ]