converting
asInducedPropagationGraph
	^ self
		asInducedPropagationGraphWithFromToBlock: [ :pcg :edge | 1.0 / (pcg outgoingEdgesLabelled: edge name forNode: edge from) size ]
		toFromBlock: [ :pcg :edge | 1.0 / (pcg incomingEdgesLabelled: edge name forNode: edge to) size ]