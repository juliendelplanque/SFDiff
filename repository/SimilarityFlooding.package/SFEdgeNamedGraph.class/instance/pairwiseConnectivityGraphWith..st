pairwise connectivity graph
pairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph
	| graph |
	graph := SFPairwiseConnectivityGraph new.
	self edges do: [ :edge |
		(((anotherSFEdgeNamedGraph edgesLabelled: edge name)
			collect: [ :otherEdge |
				SFEdge
					from: (SFMatchCandidate base: edge from target: otherEdge from)
					to: (SFMatchCandidate base: edge to target: otherEdge to)
					named: edge name ])) do: [ :e | graph addEdge: e ] ].
	^ graph