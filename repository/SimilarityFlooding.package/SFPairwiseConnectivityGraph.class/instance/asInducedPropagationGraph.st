converting
asInducedPropagationGraph
	| newEdges propagationGraph |
	self flag: #todo. "Make the computation of propagation coef. configurable."
	newEdges := (self edges collect: [ :edge |
						{ 
							SFWeightedEdge from: edge from to: edge to.
							SFWeightedEdge from: edge to to: edge from
						} ]) flattened.
	
	propagationGraph := SFInducedPropagationGraph new
								edges: newEdges;
								yourself.
	propagationGraph edges do: [ :edge |
		edge weight: 1.0 / (propagationGraph neighbourhoodSizeOf: edge from) ].
	
	^ propagationGraph