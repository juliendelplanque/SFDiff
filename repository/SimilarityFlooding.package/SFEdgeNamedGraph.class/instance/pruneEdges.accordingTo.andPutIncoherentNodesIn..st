private - pcg
pruneEdges: pcgEdges accordingTo: matchesDict andPutIncoherentNodesIn: incoherentNodes
	self flag: 'Could be optimized if matchesDict is another datastructure than a Dictionary allowing to access keys or value efficiently...
	Such DS should implement #includesKey: #includes: (value), #at: (key) and #keyAtValue:'.
	^ pcgEdges reject: [ :namedEdge |
		|shouldReject|
		shouldReject := false.
		(((matchesDict includesKey: namedEdge from baseEntity) and: [ (matchesDict at: namedEdge from baseEntity) ~= namedEdge from targetEntity ])
			or: [ (matchesDict includes: namedEdge from targetEntity) and: [ (matchesDict keyAtValue: namedEdge from targetEntity) ~= namedEdge from baseEntity ] ])
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge from ].
		(((matchesDict includesKey: namedEdge to baseEntity) and: [ (matchesDict at: namedEdge to baseEntity) ~= namedEdge to targetEntity ])
			or: [ (matchesDict includes: namedEdge to targetEntity) and: [ (matchesDict keyAtValue: namedEdge to targetEntity) ~= namedEdge to baseEntity ] ])
				ifTrue: [ 
					shouldReject := true.
					incoherentNodes add: namedEdge to ].
		shouldReject ]