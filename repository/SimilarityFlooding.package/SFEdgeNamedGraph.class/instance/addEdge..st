adding
addEdge: aSFEdge
	super addEdge: aSFEdge.
	
	(self labelToEdgesDict at: aSFEdge name ifAbsentPut: [ OrderedCollection new ])
		add: aSFEdge