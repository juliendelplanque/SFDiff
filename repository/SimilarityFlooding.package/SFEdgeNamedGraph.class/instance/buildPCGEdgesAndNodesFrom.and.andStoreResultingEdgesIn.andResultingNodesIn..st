private - pcg
buildPCGEdgesAndNodesFrom: aSFEdgeNamedGraph and: anotherSFEdgeNamedGraph andStoreResultingEdgesIn: pcgEdges andResultingNodesIn: pcgNodes
	aSFEdgeNamedGraph edges do: [ :edge |
		(anotherSFEdgeNamedGraph edgesLabelled: edge name) do: [ :otherEdge |
			|from to|
			from := SFMatchCandidate base: edge from target: otherEdge from.
			to := SFMatchCandidate base: edge to target: otherEdge to.
			pcgEdges add: (SFEdge from: from to: to named: edge name).
			pcgNodes
				add: from;
				add: to ] ].