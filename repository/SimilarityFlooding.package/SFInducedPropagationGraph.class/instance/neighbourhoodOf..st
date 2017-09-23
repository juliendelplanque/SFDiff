accessing-computed
neighbourhoodOf: aNode
	^ neighbourhoodDict at: aNode ifAbsent: [ #() ]