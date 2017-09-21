testing
canGenerateMoveFrom: match knowingNewMatches: newMatches
	| baseEntity targetEntity |
	baseEntity := self baseEntityOf: match.
	targetEntity := self targetEntityOf: match.
	^ ((self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches) not
			and: [ baseEntity name = targetEntity name ])