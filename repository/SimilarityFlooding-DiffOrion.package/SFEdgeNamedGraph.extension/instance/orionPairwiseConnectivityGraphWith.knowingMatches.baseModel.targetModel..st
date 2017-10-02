*SimilarityFlooding-DiffOrion
orionPairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict baseModel: baseModel targetModel: targetModel
	| graph pcgEdges pcgNodes incoherentNodes |
	graph := SFPairwiseConnectivityGraph new.
	pcgNodes := Set new.
	pcgEdges := OrderedCollection new.
	self edges do: [ :edge |
		| edgeFrom edgeTo |
		edgeFrom := edge from versionIn: baseModel.
		edgeTo := edge to versionIn: baseModel.
		(anotherSFEdgeNamedGraph edgesLabelled: edge name) do: [ :otherEdge |
			|from to|
			from := SFMatchCandidate base: edgeFrom target: (otherEdge from versionIn: targetModel).
			to := SFMatchCandidate base: edgeTo target: (otherEdge to versionIn: targetModel).
			pcgEdges add: (SFEdge from: from to: to named: edge name).
			pcgNodes
				add: from;
				add: to ] ].
	"Prune edges and incoherent nodes with #matchesDict"
	incoherentNodes := Set new.
	pcgEdges := self pruneEdges: pcgEdges accordingTo: matchesDict andPutIncoherentNodesIn: incoherentNodes.
	^ graph
		addAllEdges: pcgEdges;
		nodes: pcgNodes \ incoherentNodes;
		yourself