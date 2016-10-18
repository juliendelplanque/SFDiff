converting
asInducedPropagationGraph
	| propagationGraph |
	self flag: #todo. "Make the computation of propagation coef. configurable."
	propagationGraph := SFInducedPropagationGraph new.
	self edges do: [ :edge |
		propagationGraph
			addEdge: (SFWeightedEdge from: edge from to: edge to weight: 1.0 / (self outgoingEdgesLabelled: edge name forNode: edge from) size);
			addEdge: (SFWeightedEdge from: edge to to: edge from weight: 1.0 / (self incomingEdgesLabelled: edge name forNode: edge to) size) ].
	
	^ propagationGraph