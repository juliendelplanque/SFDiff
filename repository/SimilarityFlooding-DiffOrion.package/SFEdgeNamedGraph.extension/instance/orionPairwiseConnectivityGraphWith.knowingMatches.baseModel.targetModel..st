*SimilarityFlooding-DiffOrion
orionPairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict baseModel: baseModel targetModel: targetModel
	| graph pcgEdges pcgNodes incoherentNodes |
	self flag: 'To optimize if possible.'.
	graph := SFPairwiseConnectivityGraph new.
	pcgNodes := Set new.
	pcgEdges := OrderedCollection new.
	self edges do: [ :edge |
		| edgeFrom edgeTo |
		edgeFrom := edge from versionIn: baseModel.
		edgeTo := edge to versionIn: baseModel.
		anotherSFEdgeNamedGraph edges select: [ :otherEdge | edge name = otherEdge name ] thenDo: [ :otherEdge |
				|from to|
				from := SFMatchCandidate base: edgeFrom target: (otherEdge from versionIn: targetModel).
				to := SFMatchCandidate base: edgeTo target: (otherEdge to versionIn: targetModel).
				pcgEdges add: (SFEdge from: from to: to named: edge name).
				pcgNodes
					add: from;
					add: to ] ].
		"Prune edges and nodes incoherent with #matchesDict"
		incoherentNodes := Set new.
		pcgEdges := pcgEdges reject: [ :namedEdge |
			|shouldReject|
			shouldReject := false.
			(matchesDict includesKey: namedEdge from baseEntity)
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge from ].
			(matchesDict includesKey: namedEdge to baseEntity)
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge to ].
			shouldReject ].
	pcgNodes := pcgNodes \ incoherentNodes.
	pcgEdges do: [ :e | graph addEdge: e ].
	graph nodes: pcgNodes.
	^ graph