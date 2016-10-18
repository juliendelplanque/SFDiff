adding
addEdge: aSFEdge
	super addEdge: aSFEdge.
	(neighbourhoodDict includesKey: aSFEdge to)
		ifTrue: [ (neighbourhoodDict at: aSFEdge to) add: aSFEdge ]
		ifFalse: [ neighbourhoodDict at: aSFEdge to put: (OrderedCollection with: aSFEdge) ]