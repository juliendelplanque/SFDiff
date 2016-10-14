formula
useBasicFormula
	self sigmaValueBlock: [ :node :graph |
		(graph neighbourhoodOf: node)
			inject: (graph sigmaValueOf: node)
			into: [ :sum :currentEdge |
				sum + ((graph sigmaValueOf: currentEdge from) * currentEdge weight) ] ].