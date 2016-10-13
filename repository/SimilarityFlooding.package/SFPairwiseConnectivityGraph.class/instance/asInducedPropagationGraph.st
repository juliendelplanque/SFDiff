converting
asInducedPropagationGraph
	| propagationGraph |
	self flag: #todo. "Make the computation of propagation coef. configurable."
	propagationGraph := SFInducedPropagationGraph new.
	self edges collect: [ :edge |
		propagationGraph
			addEdge: (SFWeightedEdge from: edge from to: edge to);
			addEdge: (SFWeightedEdge from: edge to to: edge from) ].
	
	propagationGraph edges do: [ :edge |
		edge weight: 1.0 / (propagationGraph neighbourhoodSizeOf: edge from) ].
	
	^ propagationGraph