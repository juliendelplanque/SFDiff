diffing
buildPairwiseConnectivityGraphFrom: baseGraph and: targetGraph knowingMatches: matches
	| pairwise |
	pairwiseTime := [ pairwise := baseGraph orionPairwiseConnectivityGraphWith: targetGraph knowingMatches: matches ] timeToRun.
	^ pairwise