pairwise connectivity graph
pairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph
	| graph |
	graph := SFPairwiseConnectivityGraph new.
	self edges do: [ :edge |
		((anotherSFEdgeNamedGraph edges
			select: [ :otherEdge | edge name = otherEdge name ]
			thenCollect: [ :otherEdge |
				SFEdge
					from: (SFNode base: edge from target: otherEdge from)
					to: (SFNode base: edge to target: otherEdge to)
					named: edge name ])) do: [ :e | graph addEdge: e ] ].
	^ graph