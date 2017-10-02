*SimilarityFlooding-DiffOrion
orionBuildPCGEdgesAndNodesFrom: aSFEdgeNamedGraph and: anotherSFEdgeNamedGraph andStoreResultingEdgesIn: pcgEdges andResultingNodesIn: pcgNodes
	aSFEdgeNamedGraph edges do: [ :edge |
		| edgeFrom edgeTo |
		edgeFrom := edge from versionIn: aSFEdgeNamedGraph model.
		edgeTo := edge to versionIn: aSFEdgeNamedGraph model.
		(anotherSFEdgeNamedGraph edgesLabelled: edge name) do: [ :otherEdge |
			|from to|
			from := SFMatchCandidate base: edgeFrom target: (otherEdge from versionIn: anotherSFEdgeNamedGraph model).
			to := SFMatchCandidate base: edgeTo target: (otherEdge to versionIn: anotherSFEdgeNamedGraph model).
			pcgEdges add: (SFEdge from: from to: to named: edge name).
			pcgNodes
				add: from;
				add: to ] ].