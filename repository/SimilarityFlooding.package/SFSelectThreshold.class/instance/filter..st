filtering
filter: aSFInducedPropagationGraph
	|baseProposals targetProposals|
	baseProposals := self proposalsForBaseModelFromCandidates: aSFInducedPropagationGraph matchCandidates.
	targetProposals := self proposalsForTargetModelFromCandidates: aSFInducedPropagationGraph matchCandidates.
	self
		makeProposalsRelative: baseProposals;
		makeProposalsRelative: targetProposals.
	^ self findStableMarriageForBase: baseProposals andTargetEntities: targetProposals