accessing-computed
neighbourhoodOf: aNode
	^ self edges select: [ :edge |
		edge to = aNode ]