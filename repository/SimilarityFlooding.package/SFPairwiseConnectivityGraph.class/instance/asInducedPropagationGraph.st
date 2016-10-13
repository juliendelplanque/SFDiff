converting
asInducedPropagationGraph
	self flag: #todo. "Make the computation of propagation coef. configurable."
	^ SFInducedPropagationGraph new
			edges: (self edges collect: [ :edge |
						| fromToWeight toFromWeight |
						fromToWeight := 1.0 / (self neighbourhoodSizeOf: edge from).
						toFromWeight := 1.0 / (self neighbourhoodSizeOf: edge to).
						{ 
							SFInducedPropagationEdge from: edge from to: edge to  weight: fromToWeight.
							SFInducedPropagationEdge from: edge to to: edge from weight: toFromWeight
						} ]) flattened;
			yourself