helpers
areParentEntitiesEqualsFor: anEntity and: anotherEntity
	| anEntityParents anotherEntityParents |
	anEntityParents := self parentEntitiesOf: anEntity.
	anotherEntityParents := self parentEntitiesOf: anEntity.
	anEntityParents do: [ :entityParent |
		anotherEntityParents
			detect: [ :anotherEntityParent | entityParent isEqualTo: anotherEntityParent ]
			ifNone: [ ^ false ] ].
	^ true