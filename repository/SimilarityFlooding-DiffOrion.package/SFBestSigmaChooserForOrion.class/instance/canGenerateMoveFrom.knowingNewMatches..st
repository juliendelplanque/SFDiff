testing
canGenerateMoveFrom: match knowingNewMatches: newMatches
	"A move change can be generated from a #match if the parent entities of the matching entities are not equals and the matching entities have the same name."
	| baseEntity targetEntity |
	baseEntity := self baseEntityOf: match.
	targetEntity := self targetEntityOf: match.
	^ ((self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches) not
			and: [ baseEntity name = targetEntity name ])