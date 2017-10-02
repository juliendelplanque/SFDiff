private - pcg
pruneEdges: pcgEdges accordingTo: matchesDict andPutIncoherentNodesIn: incoherentNodes
	^ pcgEdges reject: [ :namedEdge |
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
		shouldReject ]