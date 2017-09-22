pairwise connectivity graph
pairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: aDictionary
	| graph |
	self halt: 'The logic used to prune nodes in the PCG is wrong.'.
	graph := SFPairwiseConnectivityGraph new.
	self edges do: [ :edge |
		(aDictionary includesAssociation: edge from -> edge to)
			ifTrue: [ 
				graph addEdge:
					(SFNamedEdge
						from: (SFNode base: edge from target: (aDictionary at: edge from))
						to: (SFNode base: edge to target: (aDictionary at: edge to))
						named: edge name) ].
			((aDictionary includesKey: edge from ) or: [ aDictionary includes: edge to ])
				ifFalse: [
				((anotherSFEdgeNamedGraph edges
					select: [ :otherEdge | 
						edge name = otherEdge name ]
					thenCollect: [ :otherEdge |
						SFNamedEdge
							from: (SFNode base: edge from target: otherEdge from)
							to: (SFNode base: edge to target: otherEdge to)
							named: edge name ])) do: [ :e | graph addEdge: e ] ] ]  displayingProgress: 'Building pairwise connectivity graph'.
	^ graph