diffing
buildInducedPropagationGraph: pairwise
	^ pairwise asInducedPropagationGraph
			nodes: pairwise nodes;
			yourself