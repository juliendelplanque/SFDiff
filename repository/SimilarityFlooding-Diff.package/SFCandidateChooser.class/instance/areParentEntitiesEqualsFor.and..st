testing
areParentEntitiesEqualsFor: anEntity and: anotherEntity
	| anEntityParents anotherEntityParents |
	anEntityParents := self parentEntitiesOf: anEntity.
	anotherEntityParents := self parentEntitiesOf: anotherEntity.
	^ anEntityParents size = anotherEntityParents size
		and: [ 
			anEntityParents
				allSatisfy: [ :entityParent | 
				anotherEntityParents
					anySatisfy: [ :anotherEntityParent |
						entityParent sfIsEqualTo: anotherEntityParent ] ] ]