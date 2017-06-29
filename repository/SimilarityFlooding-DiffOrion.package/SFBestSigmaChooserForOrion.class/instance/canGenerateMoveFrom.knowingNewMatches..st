testing
canGenerateMoveFrom: match knowingNewMatches: newMatches
	| baseEntity targetEntity |
	baseEntity := match baseEntity versionIn: self sfDiff baseModel.
	targetEntity := match targetEntity versionIn: self sfDiff targetModel.
	^ ((self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches) not
			and: [ baseEntity name = targetEntity name ])