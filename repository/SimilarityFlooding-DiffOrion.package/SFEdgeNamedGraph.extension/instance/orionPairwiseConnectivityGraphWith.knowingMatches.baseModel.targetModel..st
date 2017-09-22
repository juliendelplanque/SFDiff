*SimilarityFlooding-DiffOrion
orionPairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict baseModel: baseModel targetModel: targetModel
	| graph matchesDictAssoc |
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