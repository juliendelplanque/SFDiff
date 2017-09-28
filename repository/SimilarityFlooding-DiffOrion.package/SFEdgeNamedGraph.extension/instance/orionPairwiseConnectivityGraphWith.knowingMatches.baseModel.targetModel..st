*SimilarityFlooding-DiffOrion
orionPairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict baseModel: baseModel targetModel: targetModel
	| graph matchesDictAssoc pcgEdges pcgNodes incoherentNodes |
	"self halt: 'There is still a problem here. It is not because one part of an edge is not coherent with known matches that the other part is not be be included in the PCG. Nevertheless, for now, a SFPairwiseConnectivityGraph only stores edges, it can not store single nodes... This has to be fixed'.
	"graph := SFPairwiseConnectivityGraph new.
	matchesDictAssoc := matchesDict associations collect: [ :assoc | (assoc head versionIn: baseModel) -> (assoc tail versionIn: targetModel) ].
	pcgNodes := Set new.
	pcgEdges := OrderedCollection new.
	self edges do: [ :edge |
		| edgeFrom edgeTo |
		edgeFrom := edge from versionIn: baseModel.
		edgeTo := edge to versionIn: baseModel.
		anotherSFEdgeNamedGraph edges
			"select: [ :otherEdge |
				| otherEdgeFrom otherEdgeTo |
				otherEdgeFrom := otherEdge from versionIn: targetModel.
				otherEdgeTo := otherEdge to versionIn: targetModel.
				(matchesDictAssoc noneSatisfy: [ :assoc |
					| assocHead assocTail |
					assocHead := assoc head versionIn: baseModel.
					assocTail := assoc tail versionIn: targetModel.
					((edgeFrom = assocHead) and: [ otherEdgeFrom = assocTail ])
					 	or: [ (edgeTo = assocHead) and: [ otherEdgeTo = assocTail ] ] ])
					and: [ edge name = otherEdge name ] ]
			thenDo:" do: [ :otherEdge |
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
			(matchesDictAssoc includes: namedEdge from baseEntity -> namedEdge from targetEntity)
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge from ].
			(matchesDictAssoc includes: namedEdge to baseEntity -> namedEdge to targetEntity)
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge to ].
			shouldReject ].
	pcgNodes := pcgNodes \ incoherentNodes.
	pcgEdges do: [ :e | graph addEdge: e ].
	graph nodes: pcgNodes.
	^ graph