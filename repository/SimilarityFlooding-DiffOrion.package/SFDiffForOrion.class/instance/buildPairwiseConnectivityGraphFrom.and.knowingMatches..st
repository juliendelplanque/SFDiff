diffing
buildPairwiseConnectivityGraphFrom: baseGraph and: targetGraph knowingMatches: matches
	| pairwise |
	pairwiseTime := [ pairwise := baseGraph orionPairwiseConnectivityGraphWith: targetGraph knowingMatches: matches baseModel: self baseModel targetModel: self targetModel ] timeToRun.
	^ pairwise