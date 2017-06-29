testing
canGenerateRenameFrom: match knowingNewMatches: newMatches
	| baseEntity targetEntity |
	baseEntity := self baseEntityOf: match.
	targetEntity := self targetEntityOf: match.
	^ (baseEntity name ~= targetEntity name
			and: [ self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches ])