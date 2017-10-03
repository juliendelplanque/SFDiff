testing
canGenerateRenameFrom: match knowingNewMatches: newMatches
	"A rename change can be generated from a #match if the matching entities do not have the same name and the parent entities of the matching entities are equals."
	| baseEntity targetEntity |
	baseEntity := self baseEntityOf: match.
	targetEntity := self targetEntityOf: match.
	^ (baseEntity name ~= targetEntity name
			and: [ self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches ])