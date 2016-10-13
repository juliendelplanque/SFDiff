adding
addEdge: aSFEdge
	super addEdge: aSFEdge.
	(neighbourhoodDict includesKey: aSFEdge from)
		ifTrue: [ (neighbourhoodDict at: aSFEdge from) add: aSFEdge ]
		ifFalse: [ neighbourhoodDict at: aSFEdge from put: (OrderedCollection with: aSFEdge) ]