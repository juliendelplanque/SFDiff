testing
canGenerateRenameFrom: match knowingNewMatches: newMatches
	| baseEntity targetEntity |
	baseEntity := match baseEntity versionIn: self sfDiff baseModel.
	targetEntity := match targetEntity versionIn: self sfDiff targetModel.
	^ (baseEntity name ~= targetEntity name
			and: [ self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches ])