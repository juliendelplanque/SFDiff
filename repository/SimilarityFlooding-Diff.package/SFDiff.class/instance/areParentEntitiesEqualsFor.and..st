helpers
areParentEntitiesEqualsFor: anEntity and: anotherEntity
	| anEntityParents anotherEntityParents |
	anEntityParents := self parentEntitiesOf: anEntity.
	anotherEntityParents := self parentEntitiesOf: anEntity.
	^ anEntityParents
		allSatisfy: [ :entityParent | 
			anotherEntityParents
				anySatisfy: [ :anotherEntityParent |
					entityParent sfIsEqualTo: anotherEntityParent ] ]