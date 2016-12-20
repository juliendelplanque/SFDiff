helpers
proportionOfChildrenEntitiesMatchedFor: anEntity in: matchings
	| denominator |
	denominator := (self childrenEntitiesOf: anEntity) size.
	denominator = 0
		ifTrue: [ ^ 0 ].
	^ (self childrenEntitiesMatchedFor: anEntity in: matchings) size / denominator