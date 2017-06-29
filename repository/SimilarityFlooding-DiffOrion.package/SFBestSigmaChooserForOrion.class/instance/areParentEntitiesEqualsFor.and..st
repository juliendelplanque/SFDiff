testing
areParentEntitiesEqualsFor: anEntity and: anotherEntity
	| anEntityParents anotherEntityParents |
	self halt.
	anEntityParents := (self parentEntitiesOf: anEntity) collect: [ :e | e versionIn: self sfDiff baseModel ].
	anotherEntityParents := (self parentEntitiesOf: anotherEntity) collect: [ :e | e versionIn: self sfDiff targetModel ].
	^ anEntityParents size = anotherEntityParents size
		and: [ 
			anEntityParents
				allSatisfy: [ :entityParent | 
				anotherEntityParents
					anySatisfy: [ :anotherEntityParent |
						entityParent sfIsEqualTo: anotherEntityParent ] ] ]