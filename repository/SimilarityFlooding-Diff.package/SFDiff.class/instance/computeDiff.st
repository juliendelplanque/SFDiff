diffing
computeDiff
	| candidates matches inducedPropagation |
	self baseModel prepareToDiff.
	self targetModel prepareToDiff.
	candidates := #().
	preprocessTime := [ matches := self equalEntitiesFinder new
		baseModel: self baseModel;
		targetModel: self targetModel;
		findEqualEntities ] timeToRun.
	(self shouldDoSFDiff: matches)
		ifTrue: [ inducedPropagation := self doSFDiffWith: matches.
			candidates := inducedPropagation matchCandidates ].
	changeBuildingTime := [ self buildChangesFrom: candidates withKnownMatches: matches ]
		timeToRun