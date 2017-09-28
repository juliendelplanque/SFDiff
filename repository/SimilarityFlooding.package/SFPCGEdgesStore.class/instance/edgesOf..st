accessing
edgesOf: aNode
	^ (self nodeToEdgesDict at: aNode ifAbsent: [ ^ #() ])
			inject: Set new
			into: [ :set :currentCol |
				set
					addAll: currentCol;
					yourself ]