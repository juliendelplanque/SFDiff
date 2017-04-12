accessing
edgesOf: aNode
	^ (self nodeToEdgesDict at: aNode ifAbsent: [ ^ #() ]) values