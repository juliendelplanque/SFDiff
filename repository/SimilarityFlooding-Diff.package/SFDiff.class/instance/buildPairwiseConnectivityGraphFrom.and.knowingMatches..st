diffing
buildPairwiseConnectivityGraphFrom: baseGraph and: targetGraph knowingMatches: matches
	| pairwise |
	pairwiseTime := [ pairwise := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches ] timeToRun.
	^ pairwise