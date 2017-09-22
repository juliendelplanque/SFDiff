*SimilarityFlooding-DiffOrion
orionPairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict baseModel: baseModel targetModel: targetModel
	| graph matchesDictAssoc |
	self halt: 'There is still a problem here. It is not because one part of an edge is not coherent with known matches that the other part is not be be included in the PCG. Nevertheless, for now, a SFPairwiseConnectivityGraph only stores edges, it can not store single nodes... This has to be fixed'.
	graph := SFPairwiseConnectivityGraph new.
	matchesDictAssoc := matchesDict associations.
	self edges do: [ :edge |
		| edgeFrom edgeTo |
		edgeFrom := edge from versionIn: baseModel.
		edgeTo := edge to versionIn: baseModel.
		anotherSFEdgeNamedGraph edges
			select: [ :otherEdge |
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
			thenDo: [ :otherEdge |
				graph addEdge: (SFNamedEdge
										from: (SFNode base: edgeFrom target: (otherEdge from versionIn: targetModel))
										to: (SFNode base: edgeTo target: (otherEdge to versionIn: targetModel))
										named: edge name) ] ].
	^ graph