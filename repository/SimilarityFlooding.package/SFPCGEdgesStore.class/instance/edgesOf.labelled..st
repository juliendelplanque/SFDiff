accessing
edgesOf: aNode labelled: aString 
	^ (self nodeToEdgesDict at: aNode ifAbsent: [ ^ #() ]) at: aString ifAbsent: [ #() ]