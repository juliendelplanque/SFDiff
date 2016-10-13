pairwise connectivity graph
pairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph
	| newEdges |
	newEdges := OrderedCollection new.
	self edges do: [ :edge |
		newEdges addAll: (anotherSFEdgeNamedGraph edges
							select: [ :otherEdge | edge name = otherEdge name ]
							thenCollect: [ :otherEdge |
								SFNamedEdge
									from: (SFNode base: edge from target: otherEdge from)
									to: (SFNode base: edge to target: otherEdge to)
									named: edge name ]) ].
	^ SFPairwiseConnectivityGraph new
		edges: newEdges;
		yourself